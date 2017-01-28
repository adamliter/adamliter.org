COMPILED_DIR = "website-compiled"
DEST_DIR = "_site"

task :default => [:build]

desc "Build Jekyll site and copy files to COMPILED_DIR"
task :build do
  Rake::Task["helper:wipe_dest_dir"].invoke
  system "jekyll build"
  Rake::Task["helper:wipe_compiled_dir"].invoke
  # Hack around jekyll build not dereferencing symlinks
  Rake::Task["helper:force_dereference_bootstrap_js"].invoke
  system "cp -r _site/* ../#{COMPILED_DIR}/"
  Rake::Task["helper:kill_updates"].invoke
end

desc "Serve Jekyll site locally for development and watch"
task :watch do
  Rake::Task["helper:wipe_dest_dir"].invoke
  Rake::Task["helper:kill_running_jekyll"].invoke
  system "jekyll serve -w"
end

desc "Serve Jekyll site locally for development purposes"
task :serve do
  Rake::Task["helper:wipe_dest_dir"].invoke
  Rake::Task["helper:kill_running_jekyll"].invoke
  system "jekyll serve -B"
  Rake::Task["helper:force_dereference_bootstrap_js"].invoke
end

namespace :deploy do

  desc "Check HTML output with htmlproofer"
  task :proof do
    system "htmlproofer ./_site --only-4xx --check-favicon --check-html --allow-hash-href"
  end

  desc "Deploy to production"
  task :deploy_prod do
    system "rsync -avzHP --exclude='.git' ../#{COMPILED_DIR}/ -e ssh adamliter@l1node.adamliter.org:/var/www/adamliter.org"
  end
end

# Helper rake tasks
namespace :helper do

  desc "Clean DEST_DIR"
  task :wipe_dest_dir do
    system "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  end

  desc "Clean COMPILED_DIR"
  task :wipe_compiled_dir do
    system "rm -r ../#{COMPILED_DIR}/*" unless Dir["../#{COMPILED_DIR}/*"].empty?
  end

  desc "Kill the Jekyll server running in the background"
  task :unserve do
    system "kill -9 $(pgrep jekyll)"
  end

  desc "Kill Jekyll if already running"
  task :kill_running_jekyll do
    unless `pgrep jekyll`.empty?
      puts("Jekyll is already running. Killing already running process...")
      Rake::Task["helper:unserve"].invoke
    end
  end

  desc "Hack around Jekyll build not deferencing symlinks"
  task :force_dereference_bootstrap_js do
    system "ln -sf ../../bootstrap/assets/javascripts/bootstrap.min.js #{DEST_DIR}/js/bootstrap.min.js"
  end

  desc "Remove individual post pages in updates"
  task :kill_updates do
    UPDATE_DIRS = Dir.glob("../#{COMPILED_DIR}/updates/*").select { |f| File.directory? f }
    UPDATE_DIRS.each { |dir| system "rm -rf #{dir}" }
  end

end

