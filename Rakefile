COMPILED_DIR = "website-compiled"
DEST_DIR = "_site"

task :default => [:build]

desc "Build Jekyll site and copy files to COMPILED_DIR"
task :build do
  system "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  system "jekyll build"
  system "rm -r ../#{COMPILED_DIR}/*" unless Dir["../#{COMPILED_DIR}/*"].empty?
  system "cp -r _site/* ../#{COMPILED_DIR}/"
  # Remove individual post pages in updates
  UPDATE_DIRS = Dir.glob("../#{COMPILED_DIR}/updates/*").select { |f| File.directory? f }
  UPDATE_DIRS.each { |dir| system "rm -rf #{dir}" }
end
