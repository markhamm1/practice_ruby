require 'http'

puts "Enter a word:"
user_input = gets.chomp.downcase

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=") 

definition = response.parse

index = 0
while true
  if definition[index]["text"] == nil
    index += 1
  else
    break
  end
end

definition = definition[index]["text"]

puts "The definition is '#{definition}'"

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=")

top_example = response.parse["text"]

puts "The top example is '#{top_example}'"

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=")

pronunciation = response.parse

puts "The pronunciation is '#{pronunciation[0]["raw"]}'"