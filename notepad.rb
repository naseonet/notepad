require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'

puts "Hello, I'm a notepad!"
puts "Create me choices a type:"

choices = Post.post_types
choice = -1

until choice >= 0 and choice < choices.size do
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = STDIN.gets.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save

puts "Done and save"