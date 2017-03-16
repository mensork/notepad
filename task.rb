require "date"

class Task < Post
  def initialize
    super
    @duty = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какому сроку? Введи дату в формате YYYY-MM-DD"
    input = STDIN.gets.chomp
    @duty = "\n\rСделать до: #{Date.parse(input)}"
  end

  def to_strings
    string = "Создано: #{@created_at.strftime("%Y-%m-%d  %H:%M:%S")}\n\r"
    [string, @text, @duty]
  end
end