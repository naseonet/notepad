class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Addres URL:"
    @url = STDIN.gets.chomp

    puts "Description of URL:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n \n"

    return [@url, @text, time_string]
  end


end