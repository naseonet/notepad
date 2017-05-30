class Post

  def initialize
    @created_at = Time.now
    @text = nil
  end

  # input userus from console
  def read_from_console

  end

  def to_strings
    # todo - только дочерние классы знают
    # todo - как реализовывать данный ментод
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
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    return current_path + "/" + file_name
  end
end