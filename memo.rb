class Memo < Post

  def read_from_console
    puts "Введи текст:"
    puts "Чтобы закончить, введи \"end\".\n\r \n\r"
    line = nil
    @text = []

    until line == "end"
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop

  end

  def to_strings
    string = "Создано: #{@created_at.strftime("%Y-%m-%d  %H:%M:%S")}.\n\r \n\r"
    @text.unshift(string)
  end

end