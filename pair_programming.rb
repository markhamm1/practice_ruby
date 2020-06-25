# count = 0

# while count < 11
#   puts count
#   count += 1
# end

crepes = 0
french = 0

sams_recipes = ["item1", "item2", "item3", "item4", "item5", "item6", "item7", "item8", "item9", "crepes"]
sallys_languages = ["language1", "language2", "language3", "language4", "French"]

if sams_recipes.length >= 10 && sallys_languages.length >= 5
  p "They should date"
else
  p "They should not date"
end

sams_recipes.each do |sam_recipe|
  if sam_recipe == "crepes"
    crepes = 1
  end
end

sallys_languages.each do |sallys_language|
  if sallys_language == "French"
    french = 1
  end
end

if crepes == 1 && french == 1
  puts "They should get married"
end
