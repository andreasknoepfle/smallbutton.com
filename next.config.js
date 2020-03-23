/* eslint-disable @typescript-eslint/no-var-requires */
const withCSS = require('@zeit/next-css');
const withPurgeCSS = require('next-purgecss');
/* eslint-enable @typescript-eslint/no-var-requires */

module.exports = withCSS(
  withPurgeCSS({
    purgeCssEnabled: ({ dev, isServer }) => (!dev && !isServer),
  }),
);
