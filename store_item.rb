class Item
  def initialize(name, price, color, category)
    @name = name
    @price = price
    @color = color
    @category = category
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


# item1 = {name: "ABC Puzzle", price: 5, color: "red", category: "Educational"}
# item2 = {name: "Bee Game", price: 7, color: "yellow", category: "Indoor Fun"}
# item3 = {:name => "Jump Rope", :price => 3, :color => "pink", :category => "Outdoor Fun"}

item1 = Item.new("ABC Puzzle", 5, "red", "Educational")
item2 = Item.new("Bee Game", 7, "yellow", "Indoor Fun")
item3 = Item.new("Jump Rope", 3, "pink", "Outdoor Fun")

p item1.name

p item2.get_info

p item3.price
item3.new_price = 5
p item3.price