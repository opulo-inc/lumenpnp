# Current source
# Voltage divider: vs--R1-(Vmid)-R2--GND
# Rs: Current source resistor
printf("Index Machines Vacuum sensing helper\n");

function Is = get_current_source_output (Vs, R1, R2, Rs)
  Vmid = Vs * (R2)/(R1+R2);
  Is = Vmid / Rs;
 end
 
function gain = get_amplifier_gain (Rg)
  gain = 1 + (50e3 / Rg);
end

# XGZP101SB1
I = get_current_source_output(3.3, 4.7e3, 2.7e3, 402);
sensor_FS_output = 90e-3;
Vsw = sensor_FS_output * get_amplifier_gain(2.7e3); # Amplifer output voltage swing
printf("XGZP101SB1\n\tCurrent source output: %d mA\n\tOutput Swing: %d V\n", I*1000, Vsw);

# 2SMPP-03
I = get_current_source_output(3.3, 4.7e3, 2.7e3, 12.1e3);
sensor_FS_output = 40e-3;
Vsw = sensor_FS_output * get_amplifier_gain(820); # Amplifer output voltage swing
printf("2SMPP-03\n\tCurrent source output: %d mA\n\tOutput Swing: %d V\n", I*1000, Vsw);