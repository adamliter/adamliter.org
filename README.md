# adamliter

This repo hosts the source code for my [personal website][psite].

The canonical version of this repository is hosted on GitLab
at [`adamliter/adamliter.org`][gitlab-adamliter-org].

## Development

Install `rbenv` for managing multiple Ruby versions.

``` sh
brew install rbenv
```

Then install the version of Ruby used by this project.

``` sh
rbenv install $(cat .ruby-version)
```

Then pull the packages used.

``` sh
bundle install
```

Development commands use [`rake`][rake]. To see available comamnds, run this
command.

``` sh
bundle exec rake -T
```


<!-- links -->
[psite]: http://adamliter.org
[gitlab-adamliter-org]: https://gitlab.com/adamliter/adamliter.org
[rake]: https://github.com/ruby/rake
