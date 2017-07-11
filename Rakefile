require "bundler/gem_tasks"

task :remove_execute_flags do
  Dir.glob('**/*.{eot,svg,ttf,woff,html,css}').each do |filename|
    `chmod -x #{filename}` if File.executable?(filename)
  end
end
