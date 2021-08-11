require 'mini_magick'

# File.delete 'output.jpg'

puts 'What HTTPCat should I fetch?'

code = gets.chomp

cat_image = MiniMagick::Image.open "http://http.cat/#{code}"

cat_image.write "code_#{code}_cat.jpg"

system "start code_#{code}_cat.jpg"
