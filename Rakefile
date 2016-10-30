COMPILED_DIR = "website-compiled"
DEST_DIR = "_site"

task :default => [:build]

desc "Build Jekyll site and copy files to COMPILED_DIR"
task :build do
  system "rm -rf #{DEST_DIR}/" unless Dir["#{DEST_DIR}/*"].empty?
  system "jekyll build"
  system "rm -r ../#{COMPILED_DIR}/*" unless Dir["../#{COMPILED_DIR}/*"].empty?
  system "cp -r _site/* ../#{COMPILED_DIR}/"
end