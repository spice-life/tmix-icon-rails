# ruby test/gen_table.rb > out.html

path = File.absolute_path("app/assets/stylesheets/tmix-icon.css")
font_dir = File.absolute_path("app/assets/fonts")
names, contents = nil
File.open(path) do |f|
  names = f.each_line.grep(/tmix-.*:before/).map do |i|
    /tmix-(.*?):before/.match(i)[1]
  end
  f.rewind
  contents = f.each_line.grep(/content:.*$/).map do |i|
    /content:(.*);$/.match(i)[1]
  end
end

puts "<head>"
puts "<style>"
puts File.read(path)
puts <<-CSS
@font-face {
  font-family: 'tmix-icon';
  src: url('#{font_dir}/tmix-icon.eot?-6v4nnl');
  src: url('#{font_dir}/tmix-icon.eot?#iefix-6v4nnl') format('embedded-opentype'),
       url('#{font_dir}/tmix-icon.ttf?-6v4nnl') format('truetype'),
       url('#{font_dir}/tmix-icon.woff?-6v4nnl') format('woff'),
       url('#{font_dir}/tmix-icon.svg?-6v4nnl#tmix-icon') format('svg');
  font-weight: normal;
  font-style: normal;
}
CSS
puts "</style>"
puts "</head>"
puts "<body>"
puts "<table>"
names.zip(contents).sort_by { |nc| nc[1] }.each do |(name, content)|
  puts "<tr>"
  puts %(<td>#{name}</td>)
  puts %(<td><i class="tmix-#{name}"></i></td>)
  puts %(<td>#{content}</td>)
  puts "</tr>"
end
puts "</table>"
puts "</body>"
