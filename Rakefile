GH_PAGES_DIR = "website-compiled"

desc "Build Jekyll site and copy files"
task :build do
  system "jekyll build"
  system "rm -r ../#{GH_PAGES_DIR}/*" unless Dir['../#{GH_PAGES_DIR}/*'].empty?
  system "echo 'adamliter.org' > ../#{GH_PAGES_DIR}/CNAME"
  system "cp -r _site/* ../#{GH_PAGES_DIR}/"
end