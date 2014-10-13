require 'rest-client'
require 'json'
require 'pry'


url = "http://api.themoviedb.org/3/discover/movie?api_key=8441d2cd141a4f1530356e8634f3af99&sort_by=popularity.desc"

response = RestClient.get(url)
parsed_response = JSON.parse(response)

binding.pry


# forks = parsed_response.map do |fork|
#   {
#     username: fork['owner']['login'],
#     avatar_url: fork['owner']['avatar_url'],
#     url: fork['owner']['html_url']
#   }
# end