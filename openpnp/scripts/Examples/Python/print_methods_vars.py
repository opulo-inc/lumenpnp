# Prints all methods & variables and values of an element.
def print_methods_vars(element, clip=True):
    for item in dir(element):
        try:
            s1 = '{}.{} = {}'.format(element.name, item, eval('element.{}'.format(item)))
            if clip:
                s1 = s1[:78]
            print(s1)
        except TypeError as e:
            print('WARNING ... for {}: {}'.format(item, e))


print_methods_vars(machine.defaultHead.defaultNozzle)
