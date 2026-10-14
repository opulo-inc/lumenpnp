// Small example performing image processing using a CvPipeline

load(scripting.getScriptsDirectory().toString() + '/Examples/JavaScript/Utility.js');

// Import some OpenPnP classes we'll use
var imports = new JavaImporter(org.openpnp.model, org.openpnp.util, org.openpnp.vision.pipeline.CvPipeline, org.openpnp.vision.pipeline.CvStage);

// Using the imports from above, do some work.
with (imports) {
	task(function() {
		var xml = '<cv-pipeline>' +
		   '<stages>' +
              '<cv-stage class="org.openpnp.vision.pipeline.stages.ImageCapture" name="0" enabled="true" settle-first="true"/>' +
		      '<cv-stage class="org.openpnp.vision.pipeline.stages.BlurGaussian" name="1" enabled="true" kernel-size="15"/>' +
		      '<cv-stage class="org.openpnp.vision.pipeline.stages.ImageWriteDebug" name="2" enabled="true" prefix="bv_source_" suffix=".png"/>' +
		   '</stages>' +
		'</cv-pipeline>';

		var pipeline = new CvPipeline(xml);

		var camera = machine.getDefaultHead().getDefaultCamera();

		pipeline.setProperty("camera", camera);

		pipeline.process();

		gui.getCameraViews().getCameraView(camera).showFilteredImage(OpenCvUtils.toBufferedImage(pipeline.getWorkingImage()), s, 1500);

		var result = pipeline.getResult("results");

	});
}
