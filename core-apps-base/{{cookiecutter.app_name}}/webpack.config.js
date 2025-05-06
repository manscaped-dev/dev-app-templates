/* eslint-disable @typescript-eslint/no-var-requires */
const { composePlugins, withNx } = require("@nx/webpack");
const patchNxSourceMapPaths = require("../../tools/patchNxSourceMap");

// Nx plugins for webpack.
module.exports = composePlugins(withNx(), (config) => {
  patchNxSourceMapPaths(config);
  return config;
});
