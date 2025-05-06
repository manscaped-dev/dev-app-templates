import tracer from "dd-trace";

// If the _DATADOG_AGENT environment variable is set to true, then we will
// initialize the tracer and run the Datadog agent in Cloud Run Docker container.
if (process.env._DATADOG_AGENT === "true") {
  tracer.init();
}

export default tracer;
