require 'rest-client'
require 'json'
require 'pry'

username = 'bewd-student'
password = 'correcthorsebatterystaple'

url = "https://#{username}:#{password}@api.github.com/repos/ga-students/BEWD_NYC_13/forks"

response = RestClient.get(url)
parsed_response = JSON.parse(response)

forks = parsed_response.map do |fork|
  {
    username: fork['owner']['login'],
    avatar_url: fork['owner']['avatar_url'],
    url: fork['owner']['html_url']
  }
end