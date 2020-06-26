require 'http'

puts "Enter a word:"
user_input = gets.chomp.downcase

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")


definition = response.parse

p definition["text"]