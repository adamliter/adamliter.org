COMPILED_DIR = "website-compiled"
DEST_DIR = "_site"

task :default => [:build]

desc "Build Jekyll site and copy files to COMPILED_DIR"
task :build do
  system "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  system "jekyll build"
  system "rm -r ../#{COMPILED_DIR}/*" unless Dir["../#{COMPILED_DIR}/*"].empty?
  # Hack around jekyll build not dereferencing symlinks
  system "ln -sf ../../bootstrap/assets/javascripts/bootstrap.min.js #{DEST_DIR}/js/bootstrap.min.js"
  system "cp -r _site/* ../#{COMPILED_DIR}/"
  # Remove individual post pages in updates
  UPDATE_DIRS = Dir.glob("../#{COMPILED_DIR}/updates/*").select { |f| File.directory? f }
  UPDATE_DIRS.each { |dir| system "rm -rf #{dir}" }
end

desc "Serve Jekyll site locally for development purposes"
task :serve do
  system "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  unless `pgrep jekyll`.empty?
    puts("Jekyll is already running. Killing already running process...")
    Rake::Task["unserve"].invoke
  end
  system "jekyll serve -w -B"
  system "ln -sf ../../bootstrap/assets/javascripts/bootstrap.min.js #{DEST_DIR}/js/bootstrap.min.js"
end

desc "Kill the Jekyll server running in the background"
task :unserve do
  system "kill -9 $(pgrep jekyll)"
end

desc "Reserve the Jekyll site locally for development purposes (e.g., after changig _config.yml)"
task :reserve do
  Rake::Task["unserve"].invoke
  Rake::Task["serve"].invoke
end
