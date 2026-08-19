DEST_DIR := "adamliter.org"
DEV_DIR := "_site"

[private]
default:
    @just --list --unsorted

[group('setup')]
[doc('Set up local Ruby development environment')]
setup-env:
    rbenv install $(cat .ruby-version)
    bundle install

[group('setup')]
[doc('Check Gem dependencies')]
check-deps:
    bundle check

[group('setup')]
[doc('Update Gem dependencies')]
update-deps *gems:
    bundle update {{gems}}

[group('build')]
[doc('Recursively wipe directory')]
clean dir=(DEST_DIR):
    rm -rf '{{dir}}'

[group('build')]
[doc('Hack around Jekyll build not dereferencing symlinks')]
[private]
force-dereference-bootstrap-js dir=(DEST_DIR):
    ln -sf ../../bootstrap/assets/javascripts/bootstrap.min.js '{{dir}}'/js/bootstrap.min.js

[group('build')]
[doc('Recursively replace symlinks in directory')]
[private]
replace-symlinks dir=(DEST_DIR):
    find '{{dir}}' -type l -print0 | \
        xargs -0 -P 4 -I {} sh -c \
        'source="$1"; \
        target=$(readlink -f "$source"); \
        rm "$source"; \
        cp -RL "$target" "$source"' _ {}

[group('build')]
[doc('Remove update pages that Jekyll autogenerates')]
[private]
keep-updates-index-only dir=(DEST_DIR):
    rm -rf '{{dir}}'/updates/*/

[group('build')]
[doc('Add .well-known directory for SSL')]
[private]
make-well-known dir=(DEST_DIR):
    mkdir -p '{{dir}}'/.well-known

[group('build')]
[doc('Build Jekyll site, remove update pages, and add .well-known for SSL')]
build dir=(DEST_DIR): clean
    bundle exec jekyll build -d '{{dir}}'
    @just force-dereference-bootstrap-js '{{dir}}'
    @just replace-symlinks '{{dir}}'
    @just keep-updates-index-only '{{dir}}'
    @just make-well-known '{{dir}}'

[group('dev')]
[doc('Serve Jekyll site locally for development and watch')]
watch dir=(DEV_DIR): (clean dir) kill-running-jekyll
    bundle exec jekyll serve -w

[group('dev')]
[doc('Serve Jekyll site locally for development purposes')]
serve dir=(DEV_DIR): (clean dir) kill-running-jekyll
    (bundle exec jekyll serve -B) &
    @just force-dereference-bootstrap-js '{{dir}}'

[group('dev')]
[doc('Kill the Jekyll server running in the background')]
unserve:
    kill -9 $(pgrep jekyll)

[group('dev')]
[doc('Kill Jekyll if already running')]
[private]
kill-running-jekyll:
    #!/usr/bin/env bash
    if pgrep jekyll; then
        echo "Jekyll is already running. Killing already running process..."
        kill -9 $(pgrep jekyll)
    fi

[group('lint')]
[doc('Check HTML output with htmlproofer')]
proof dir=(DEST_DIR):
    bundle exec htmlproofer '{{dir}}' \
        --only-4xx --checks=Links,Images,Scripts --allow-hash-href \
        --enforce-https --ignore-status-codes 403 \
        --ignore-urls '/https:\/\/github\.com/'

[group('deploy')]
[doc('Deploy to production')]
deploy-prod dir=(DEST_DIR):
    rsync -avzHPhc '{{dir}}'/shiny/index.html -e ssh adamliter@l1node.adamliter.org:/srv/shiny-server/
    rm -rf '{{dir}}'/shiny
    rsync -avzHPhc --exclude='.git' --delete '{{dir}}'/ -e ssh adamliter@l1node.adamliter.org:/var/www/adamliter.org
