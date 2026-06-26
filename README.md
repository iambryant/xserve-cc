# Website: xserve.cc

[![CI](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml/badge.svg)](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml)

This repository contains the code used to create my website.

## Development

TODO

## Deployment

My website uses an automated CI/CD pipeline triggered by GitHub Actions:

1. **Linting:** Every push runs [markdownlint-cli2](https://github.com/davidanson/markdownlint-cli2-action) to check that all Markdown files are formatted correctly.
2. **Trigger:** If the linting stage passes, [workflow-webhook](https://github.com/distributhor/workflow-webhook) triggers a webhook on my server.
3. **Execution:** I use [webhook](https://github.com/adnanh/webhook), which receives the webhook and executes my deployment script.

For a deeper dive into how this setup works, check out my [blog post here](https://xserve.cc/404.html).

## License

MIT
