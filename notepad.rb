if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative "post.rb"
require_relative "memo.rb"
require_relative "task.rb"
require_relative "link.rb"

puts "Ты в блокноте, чувак. Тут всё серьезно.\n\r"
sleep 0.7
choice = -1
choices = Post.range

until choice >= 0 && choice < choices.size
  puts "Выбери тип записи:"
  choices.each_with_index do |element, index|
    puts "#{index}. #{element}\r"
  end
  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console
entry.save

puts "Ну, всё записано, котан"



