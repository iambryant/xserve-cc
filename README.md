# Website: xserve.cc

[![CI](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml/badge.svg)](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml)

This repository contains the code used to create my website.

## Development

TODO

## Deployment

Since this repository consists of mainly markdown files, I use the
[markdownlint-cli2](https://github.com/davidanson/markdownlint-cli2-action) to make sure I formatted my markdown files
correctly. If the stage passes, I use [workflow-webook](https://github.com/distributhor/workflow-webhook) to trigger
an event on my webserver running this [webhook](https://github.com/adnanh/webhook) software to run the deployment. You
can read mroe about this process in my blog post [here](https://xserve.cc/404.html).

## License

MIT
