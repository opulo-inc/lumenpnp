from __future__ import absolute_import, division

from org.openpnp.model import LengthUnit, Location

# submitUiMachineTask should be used for all code that interacts
# with the machine. It guarantees that operations happen in the
# correct order, and that the user is presented with a dialog
# if there is an error.
from org.openpnp.util.UiUtils import submitUiMachineTask

def main():
    submitUiMachineTask(move_nozzle)

def print_location(location):
    print('Location: {}'.format(location.toString()))


def move_nozzle():
    nozzle = machine.defaultHead.defaultNozzle
    location = nozzle.location
    print_location(location)

    # Move 10mm right
    location = location.add(Location(LengthUnit.Millimeters, 10, 0, 0, 0))
    print_location(location)
    nozzle.moveTo(location)

    # Move 10mm up
    location = location.add(Location(LengthUnit.Millimeters, 0, 10, 0, 0))
    print_location(location)
    nozzle.moveTo(location)

    # Move 10mm left
    location = location.add(Location(LengthUnit.Millimeters, -10, 0, 0, 0))
    print_location(location)
    nozzle.moveTo(location)

    # Move 10mm down
    location = location.add(Location(LengthUnit.Millimeters, 0, -10, 0, 0))
    print_location(location)
    nozzle.moveTo(location)

main()
