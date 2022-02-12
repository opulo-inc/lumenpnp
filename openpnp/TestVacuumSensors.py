import time
import datetime
import re

# Don't forget to pip install pyserial

import serial

# configure the serial connections (the parameters differs on the device you are connecting to)
ser = serial.Serial(
    #Change this eg. /dev/ttyUSB1
    port='COM9',
    baudrate=250000,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

ser.isOpen()

def sample_adc(f):
    a = datetime.datetime.now()
    while True:
        # ADC Channel 1,  4x GAIN and INVERTED OUTPUT
        result=run_gcode(b'M3426 G4 C1 I1\n')
        b = datetime.datetime.now()
        delta = b - a
        milliseconds=int(delta.total_seconds()*1000)

        value=int(result[2:7])
        
        f.write(str(milliseconds))
        f.write(',')
        f.write(str(value))
        #f.write(',')
        #f.write(str(result))
        f.write('\n')

        print(".", end = '')

        #Run for 8 seconds then quit
        if milliseconds>8000:
            break


def run_gcode(cmd):
    #print("Sending gcode",cmd)
    ser.write(cmd)
    
    #First reply is the result
    output=ser.readline()
    #print(output)
    #Now wait for an OK
    ok=''
    while(output!= b'ok\n' and ok != b'ok\n'):        
        ok=ser.readline()
    return output

#Run some random GCODE to ensure Mobo is connected/awake
run_gcode(b'M114\n')

#Pump {True:M106 P0; MOS1}{False:M107 P0; MOS1}
#Valve {True:M106 P1; MOS2}{False:M107 P1; MOS2}

print("Test 1 - static test, just read ambient pressure")
#Pump off
run_gcode(b'M107 P0\n')
#blow off valve (disabled))
run_gcode(b'M107 P1\n')
f = open("test1.csv", "w")
sample_adc(f)
f.close()
run_gcode(b'M107 P0\n')
run_gcode(b'M107 P1\n')

print("")
print("Test 2 - pump on without anything on nozzle")
#Pump on
run_gcode(b'M106 P0\n')
#blow off valve (disabled))
run_gcode(b'M107 P1\n')
f = open("test2.csv", "w")
sample_adc(f)
f.close()
run_gcode(b'M107 P0\n')
run_gcode(b'M107 P1\n')

print("")
print("Test 3 - pump on without anything on nozzle and vac valve energised")
#Pump on
run_gcode(b'M106 P0\n')
#blow off valve (enabled))
run_gcode(b'M106 P1\n')
f = open("test3.csv", "w")
sample_adc(f)
f.close()
run_gcode(b'M107 P0\n')
run_gcode(b'M107 P1\n')


print("")
print("Test 4 - pump on and nozzle covered (put your finger on it now!!)")
input("Press Enter to continue...")
#Pump on
run_gcode(b'M106 P0\n')
#blow off valve (disabled))
run_gcode(b'M107 P1\n')
f = open("test4.csv", "w")
sample_adc(f)
f.close()
run_gcode(b'M107 P0\n')
run_gcode(b'M107 P1\n')

print("")
print("Test 5 - pump off, nozzle covered, valve open (keep your finger on it!!)")
#Pump on
run_gcode(b'M107 P0\n')
#blow off valve (disabled))
run_gcode(b'M106 P1\n')
f = open("test5.csv", "w")
sample_adc(f)
f.close()
run_gcode(b'M107 P0\n')
run_gcode(b'M107 P1\n')


print("")
print("All tests complete (you can now remove your finger :-) )")
