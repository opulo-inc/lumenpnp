// Reset the feed count on every feeder. If a feeder doesn't
// have a setFeedCount() method we'll silently ignore it.
for each (var feeder in machine.getFeeders()) {
	try {
		feeder.setFeedCount(0);
		print('Reset ' + feeder.name);
	}
	catch (e) {
		
	}
}