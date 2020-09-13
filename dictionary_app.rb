require 'http'

while true
  puts "Enter a word (type 'q' to quit):"
  user_input = gets.chomp.downcase
  if user_input == "q"
    break
  else
    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=48dd829661f515d5abc0d03197a00582e888cc7da2484d5c7") 

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

    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=48dd829661f515d5abc0d03197a00582e888cc7da2484d5c7")

    top_example = response.parse["text"]

    puts "The top example is '#{top_example}'"

    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=48dd829661f515d5abc0d03197a00582e888cc7da2484d5c7")

    pronunciation = response.parse

    puts "The pronunciation is '#{pronunciation[0]["raw"]}'"
  end
end