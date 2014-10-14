require_relative 'lib/author'
require_relative 'lib/post'

puts 'Hello, welcome to the huffington post'

puts 'We need some of your information, please enter the following:'
author = Author.new

puts 'Please enter your first name'
author.first_name = gets.strip

puts 'Please enter your last name'
author.last_name = gets.strip

puts 'Please enter your email'
author.email = gets.strip

post = Post.new

post.author = author

puts 'Thanks for entering your information, lets add a blog'


puts 'Please enter the title of your post'
post.title = gets.strip


puts 'Please enter the body of your post'
post.body = gets.strip

puts '------'

puts "Title:  #{post.title}"
puts "by:  #{post.author.full_name}, Email: #{post.author.email}"
puts post.body


