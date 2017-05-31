require 'date'

class Task < Post
  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "What you want do?"
    @text = STDIN.gets.chomp

    puts "When you do it? DD.MM.YYYY"
    input = STDIN.gets.chomp

    # превращаем строку в тип даты
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y-%m-%d, %H:%M:%S")} \n \n"
    deadline = "Deadline: #{@due_date}"

    return [deadline, @text, time_string]
  end
end