COMPILED_DIR = "website-compiled"
DEST_DIR = "_site"

task :default => [:build]

desc "Build Jekyll site and copy files to COMPILED_DIR"
task :build do
  Rake::Task["helper:wipe_dest_dir"].invoke
  sh "jekyll build"
  Rake::Task["helper:wipe_compiled_dir"].invoke
  # Hack around jekyll build not dereferencing symlinks
  Rake::Task["helper:force_dereference_bootstrap_js"].invoke
  sh "cp -RL _site/* ../#{COMPILED_DIR}/"
  Rake::Task["helper:kill_updates"].invoke
  Rake::Task["helper:make_well_known"].invoke
end

desc "Serve Jekyll site locally for development and watch"
task :watch do
  Rake::Task["helper:wipe_dest_dir"].invoke
  Rake::Task["helper:kill_running_jekyll"].invoke
  sh "jekyll serve -w"
end

desc "Serve Jekyll site locally for development purposes"
task :serve do
  Rake::Task["helper:wipe_dest_dir"].invoke
  Rake::Task["helper:kill_running_jekyll"].invoke
  sh "jekyll serve -B"
  Rake::Task["helper:force_dereference_bootstrap_js"].invoke
end

namespace :deploy do

  desc "Check HTML output with htmlproofer"
  task :proof do
    sh "htmlproofer ../#{COMPILED_DIR} --only-4xx --check-favicon --check-html --allow-hash-href --check-img-http"
  end

  desc "Deploy to production"
  task :deploy_prod do
    sh "rsync -avzHP ../#{COMPILED_DIR}/shiny/index.html -e ssh adamliter@l1node.adamliter.org:/srv/shiny-server/"
    sh "rm -rf ../#{COMPILED_DIR}/shiny"
    sh "rsync -avzHP --exclude='.git' --delete ../#{COMPILED_DIR}/ -e ssh adamliter@l1node.adamliter.org:/var/www/adamliter.org"
  end
end

# Helper rake tasks
namespace :helper do

  desc "Clean DEST_DIR"
  task :wipe_dest_dir do
    sh "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  end

  desc "Clean COMPILED_DIR"
  task :wipe_compiled_dir do
    sh "rm -r ../#{COMPILED_DIR}/*" unless Dir["../#{COMPILED_DIR}/*"].empty?
  end

  desc "Kill the Jekyll server running in the background"
  task :unserve do
    sh "kill -9 $(pgrep jekyll)"
  end

  desc "Kill Jekyll if already running"
  task :kill_running_jekyll do
    unless `pgrep jekyll`.empty?
      puts("Jekyll is already running. Killing already running process...")
      Rake::Task["helper:unserve"].invoke
    end
  end

  desc "Hack around Jekyll build not derefencing symlinks"
  task :force_dereference_bootstrap_js do
    sh "ln -sf ../../bootstrap/assets/javascripts/bootstrap.min.js #{DEST_DIR}/js/bootstrap.min.js"
  end

  desc "Remove individual post pages in updates"
  task :kill_updates do
    UPDATE_DIRS = Dir.glob("../#{COMPILED_DIR}/updates/*").select { |f| File.directory? f }
    UPDATE_DIRS.each { |dir| sh "rm -rf #{dir}" }
  end

  desc "Make the .well-known directory for letsencrypt renewal"
  task :make_well_known do
    sh "mkdir -p ../#{COMPILED_DIR}/.well-known"
  end
end

