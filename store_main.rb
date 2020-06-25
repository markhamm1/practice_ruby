require_relative 'store_item.rb'
require_relative 'store_game.rb'
require_relative 'store_food.rb'

item1 = Item.new({name: "ABC Puzzle", price: 5, color: "red", category: "Educational"})
item2 = Game.new(name: "Bee Game", price: 7, color: "yellow", category: "Indoor Fun", age_range: "2-5")
item3 = Item.new(name: "Jump Rope", price: 3, color: "pink", category: "Outdoor Fun")
item4 = Food.new(name: "Lollipop", price: 2, color: "rainbow", category: "Food", shelf_life: "2 months")

item2.age_range
item4.shelf_life

p item1.name

p item2.get_info

p item3.price
item3.new_price = 5
p item3.price