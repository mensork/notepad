class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Введи ссылку"
    input = STDIN.gets.chomp
    @url = "Ссылка: #{input}"
    puts "Описание ссылки"
    input = STDIN.gets.chomp
    @text = "Описание: #{input}"
  end

  def to_strings
    string = "Создано: #{@created_at.strftime("%Y-%m-%d  %H:%M:%S")}.\n\r \n\r"
    [string, @url, @text]
  end
end