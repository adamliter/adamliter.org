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
[doc('Build Tailwind CSS')]
[private]
build-tailwind:
    tailwindcss -i tailwind.css -o css/main.css -m

[group('build')]
[doc('Build Jekyll site, remove update pages, and add .well-known for SSL')]
[private]
build-jekyll dir=(DEST_DIR):
    bundle exec jekyll build -d '{{dir}}'
    @just keep-updates-index-only '{{dir}}'
    @just make-well-known '{{dir}}'

[group('build')]
[doc('Build site')]
build dir=(DEST_DIR): (clean dir) build-tailwind (build-jekyll dir)

[group('dev')]
[doc('Serve Jekyll site locally for development and watch')]
[private]
watch-jekyll dir=(DEV_DIR): (clean dir) kill-running-jekyll
    bundle exec jekyll serve -w

[group('dev')]
[doc('Compile Tailwind CSS and watch for development')]
[private]
watch-tailwind:
    tailwindcss -i tailwind.css -o css/main.css --watch

[group('dev')]
[doc('Serve and watch for local development')]
watch dir=(DEV_DIR):
    @just watch-tailwind &
    @just watch-jekyll '{{dir}}'

[group('dev')]
[doc('Serve Jekyll site locally for development purposes')]
serve dir=(DEV_DIR): (clean dir) kill-running-jekyll
    @just build-tailwind
    (bundle exec jekyll serve -B) &

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
