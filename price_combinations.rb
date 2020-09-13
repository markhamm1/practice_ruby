# instruct user on proper file format
# take in input
# take in target price_combinations
# look through menu items
# output menu items that equal target price
# if program can't find exact combination show sad path

require 'csv'

def analyze_menu(menu)
  target_price = menu[0][1].to_f
  menu = menu[1..-1]
  menu_permutations = menu.permutation.to_a
  total = 0
  target_price_array = []
  menu_permutations.each do |menu_list|
    target_price_array = []
    total = 0
    menu_list.each do |item|
      total += item[1].to_f
      target_price_array << item
      if total >= target_price
        break
      end
    end
    if total == target_price
      # p "we have a winner"
      # p target_price_array
      # p total
      break
    end
  end
  if total == target_price
    p "we have a winner"
    p target_price_array
    p total
  else
    p "There are no valid combinations"
  end
end


menu = CSV.read("price_combinations.csv")
analyze_menu(menu)