// ./tracer is the datadog tracing library and needs to be imported before other libraries
// but also depends on environment variables from doppler.

import "./tracer";

import { bootstrapApp } from "@manscaped/util-bootstrap";
import { Module } from "@nestjs/common";

@Module({})
class AppModule {}

bootstrapApp({ appModule: AppModule, opts: { cors: true } });
