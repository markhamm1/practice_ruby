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
