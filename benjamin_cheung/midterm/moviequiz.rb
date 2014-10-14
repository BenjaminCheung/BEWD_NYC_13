require 'rest-client'
require 'json'
require 'pry'


class Question
	attr_accessor :year, :randnum
	def full_question 

	end
end

class Answer
	
end


rYear = rand(2006..2014)

url = "http://api.themoviedb.org/3/discover/movie?api_key=8441d2cd141a4f1530356e8634f3af99&sort_by=popularity.desc&vote_count.gte=50&year=#{rYear}"

response = RestClient.get(url)
parsed_response = JSON.parse(response)
idx = rand(1..10)

title = parsed_response['results'][idx]['original_title']
id = parsed_response['results'][idx]['id']

ansUrl = "http://api.themoviedb.org/3/movie/#{id}/credits?api_key=8441d2cd141a4f1530356e8634f3af99"

answer = RestClient.get(ansUrl)
ans_resp = JSON.parse(answer)

cast = ans_resp['cast'].map do |actor|
	actor['name']
end

def get_input
  gets.strip
end

puts "Hi There, welcome to Movie Trivia"
puts "Name an actor or actress from the movie #{title}"

guess = get_input

if cast.include?(guess)
  puts "Correct! #{guess} appeared in #{title}"
else
  puts "Sorry #{guess} did not appear in #{title}"

end

puts
puts "The cast was:"
puts cast



#binding.pry

