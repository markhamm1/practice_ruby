class Item
  
  attr_reader :active
  attr_writer :active

  def initialize(input_options)
    @name = input_options[:name]
    @price = input_options[:price]
    @color = input_options[:color]
    @category = input_options[:category]
  end

  def name
    @name
  end

  def price
    @price
  end

  def new_price=(user_input)
    @price = user_input
  end

  def color
    @color
  end

  def category
    @category
  end

  def get_info
    return "The #{@name} is #{@color} and it costs $#{price}."
  end
  
end

class Game < Item
  # def initialize
  #   super
  #   @age_range = input_options[:age_range]
  # end
  
  def fun
    p "yes"
  end

  # def age_range
  #   p @age_range
  # end
  
end

class Food < Item
  def initialize
    super
    @shelf_life = input_options[:shelf_life]
  end
end


# item1 = {name: "ABC Puzzle", price: 5, color: "red", category: "Educational"}
# item2 = {name: "Bee Game", price: 7, color: "yellow", category: "Indoor Fun"}
# item3 = {:name => "Jump Rope", :price => 3, :color => "pink", :category => "Outdoor Fun"}

item1 = Item.new({name: "ABC Puzzle", price: 5, color: "red", category: "Educational"})
item2 = Game.new(name: "Bee Game", price: 7, color: "yellow", category: "Indoor Fun", age_range: "2-5")
item3 = Item.new(name: "Jump Rope", price: 3, color: "pink", category: "Outdoor Fun")
item4 = Food.new(name: "Lollipop", price: 2, color: "rainbow", category: "Food", shelf_life: "2 months")

item2.fun

# p item1.name

# p item2.get_info

# p item3.price
# item3.new_price = 5
# p item3.price