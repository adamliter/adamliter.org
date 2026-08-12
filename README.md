# adamliter

This repo hosts the source code for my [personal website][psite].

The canonical version of this repository is hosted on GitLab
at [`adamliter/adamliter.org`][gitlab-adamliter-org].

## Development

Install `rbenv` for managing multiple Ruby versions. Additionally,
[`just`][just] is used as a task runner. And the standalone [Tailwind
CSS][tailwind] CLI is used to compile CSS.

``` sh
brew install rbenv just tailwindcss
```

Then setup the Ruby development environment with `just`.

``` sh
just setup-env
```

To see the other available `just` recipes, run `just`.

<!-- links -->
[psite]: http://adamliter.org
[gitlab-adamliter-org]: https://gitlab.com/adamliter/adamliter.org
[just]: https://github.com/casey/just
[tailwind]: https://tailwindcss.com
