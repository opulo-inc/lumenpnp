/**
 * Shortcut for calling UiUtils.submitUiMachineTask. Demonstrates
 * how to resolve arity ambiguation.
 */
function task(f) {
	Packages.org.openpnp.util.UiUtils['submitUiMachineTask(Thrunnable)'](f);
}