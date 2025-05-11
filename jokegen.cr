require "http/client"
require "json"

response = HTTP::Client.get("https://official-joke-api.appspot.com/random_joke")
data = JSON.parse(response.body)

setup = data["setup"].to_s
punch = data["punchline"].to_s

puts "#{setup} - #{punch}"
