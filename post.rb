class Post
  def initialize
    @text = nil
    @created_at = Time.now

  end

  def self.range
    [Memo, Task, Link]
  end

  def self.create(type_index)
    range[type_index].new
  end

  def read_from_console
  end

  def to_strings
  end

  def save
    file = File.new(file_path, "w:UTF-8")
    for item in to_strings do
      file.puts(item)
    end
    file.close

  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d__%H_%M_%S.txt")
    file_path = current_path + "/Notes/#{file_name}"
  end

end