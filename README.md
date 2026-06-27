# Website: xserve.cc

[![CI](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml/badge.svg)](https://github.com/iambryant/xserve-cc/actions/workflows/ci.yml)

This repository contains the source code and content used to create my website.

## Development

To create a new blog post, you can run this command in the repository:

```shell
hugo new content blog/2026/06/new-blog-post/index.md
```

## Deployment

My website uses an automated CI/CD pipeline triggered by GitHub Actions:

1. **Linting:** Every push runs [markdownlint-cli2](https://github.com/davidanson/markdownlint-cli2-action) to check
   that all Markdown files are formatted correctly.
2. **Trigger:** If the linting stage passes, [workflow-webhook](https://github.com/distributhor/workflow-webhook)
   sends a webhook to my webserver.
3. **Execution:** I use [webhook](https://github.com/adnanh/webhook), which runs on my webserver and executes my
   deployment script.

For a deeper dive into how this setup works, check out my [blog post here](https://xserve.cc/404.html).

## License

MIT
