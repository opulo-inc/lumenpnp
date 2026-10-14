# Get the nozzle
my_nozzle = machine.defaultHead.defaultNozzle

# Print information regarding nozzle
print('###  Name &  Location of {}  {}'.format(my_nozzle.name, '#' * 16))
print('{} {} {}'.format(my_nozzle, my_nozzle.name, my_nozzle.location))
