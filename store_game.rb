class Game < Item
  def initialize(input_options)
    super
    @age_range = input_options[:age_range]
  end
  
  def fun
    p "yes"
  end

  def age_range
    p @age_range
  end
  
end