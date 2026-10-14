print('Scripting Environment');

// Print out the global variables accessible to the scripts.
print('  Global Variables');
print('    config: ' + config);
print('    machine: ' + machine);
print('    gui: ' + gui);
print('    scripting: ' + scripting);

print('  Scripts Directory: ' + scripting.getScriptsDirectory());

// Show a list of scripting engines that are available along with the file
// extensions they can process.
print('  Scripting Engines');
var manager = new javax.script.ScriptEngineManager();
var factories = manager.getEngineFactories();
for each (var factory in factories) {
	print('    Engine: ' + factory.getEngineName() + ' (' + factory.getEngineVersion() + ')');
	print('      Language: ' + factory.getLanguageName() + ' (' + factory.getLanguageVersion() + ')');
	print('      Extensions: ' + factory.getExtensions());
}
print();
