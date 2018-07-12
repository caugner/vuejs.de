#!/usr/bin/env ruby

Dir["_posts/*.md"].each do |file|
  name = File.basename(file, ".md")
  new_dir = "_posts/#{name}"
  new_file = "#{new_dir}/#{name}.md"

  puts "Moving #{file} -> #{new_file}"
  Dir.mkdir(new_dir)
  File.rename file, new_file
end
