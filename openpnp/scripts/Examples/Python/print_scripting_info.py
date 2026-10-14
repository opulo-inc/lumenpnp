from javax.script import ScriptEngineManager

print('Scripting Environment')

# Print out the global variables accessible to the scripts.
print('  Global Variables')
print('    config: {}'.format(config))
print('    machine: {}'.format(machine))
print('    gui: {}'.format(gui))
print('    scripting: {}'.format(scripting))

print('  Scripts Directory: {}'.format(scripting.getScriptsDirectory()))

# Show a list of scripting engines that are available along with the file
# extensions they can process.
print('  Scripting Engines')
manager = ScriptEngineManager()
factories = manager.getEngineFactories()
for factory in factories:
    print('    Engine: {} ({})'.format(factory.getEngineName(), factory.getEngineVersion()))
    print('      Language: {} ({})'.format(factory.getLanguageName(),
                                           factory.getLanguageVersion()))
    print('      Extensions: {}'.format(factory.getExtensions()))
