# string1 "together"
# string2 "bothersome"

# result = "ther"

# longest_string = ""

# # write nested loops that compares both strings. takes first character or string1 and compares it with first character of string two. keeps going through string two until if find a match, then checks to see if the next character is also a match. Keeps working through string till the charater doesn't match. Then compares the length of the matching string to current length or longest_string. If longer then replace the value of longest_string with new string. after it works through the entire second string outside loop starts over with second character of string1 and runs the whole process again. Continue until you've worked through string1. return longest_string after the loop.

# index1 = 0

# string1.each do |c|
#   index2 = 0

# end

# numbers = [2, 5, 6, 3, 4, 7, 8, 9, 1, 8]
# # Output = [2,8] [6,4] [3,7] [9,1]

# pairs = []
# index1 = 0
# index2 = 1

# while index1 < numbers.length
#   while index2 < numbers.length
#     if numbers[index1] + numbers[index2] == 10
#       ten_pair = [numbers[index1], numbers[index2]]
#       pairs << ten_pair
#     end
#     index2 += 1
#   end
#   index1 += 1
#   index2 = index1 + 1
# end

# p pairs

string1 = "together"
string2 = "bothersome"

longest_substring = ""
string1_index1 = 0

while string1_index1 < string1.length
  string2_index1 = 0
  string1_index2 = string1_index1
  while string2_index1 < string2.length
    substring = ""
    while true
      if string1[string1_index2] == string2[string2_index1]
        substring += string1[string1_index2]
        string2_index1 += 1
        string1_index2 += 1
      else
        break
      end
    end
    if substring.length > longest_substring.length
      longest_substring = substring
    end
    string1_index2 = string1_index1
    string2_index1 += 1
  end
  string1_index1 += 1
end

# p longest_substring


# def sum_terms(n)
#   i = 1
#   sum = 0
#   n.times do
#     sum += i
#     i += 1
#   end
#   sum
# end


# def sum_terms(n)
#   (1..n).reduce(0) {|sum, val| sum += (val * val + 1)}
#  end

# p sum_terms(3)

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.select {|a| a.odd?}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    p arr.delete_if {|a| a % 3 == 0}
    p arr
end

def delete_arr(arr)
  # delete all negative elements
  arr.delete_if! {|a| a < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  arr.keep_if {|a| a <= 0}
end


# p select_arr([3, 4, 2, 1, 2, 3, 4, 5, 6])
# p reject_arr([3, 4, 2, 1, 2, 3, 4, 5, 6])
# p delete_arr([3, 4, -2, 1, 2, -3, 4, -5, 6])
# p keep_arr([3, 4, -2, 1, 2, -3, 4, -5, 6])

def formingMagicSquare(s)


end

# p formingMagicSquare([4,8,2], [4,5,7], [6,1,6])

fibonacci_sequence = [1, 2]
sum = 2
max_number = 4_000_000

while fibonacci_sequence[-1] + fibonacci_sequence[-2] < max_number
  fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
  if fibonacci_sequence[-1].even? == true
    sum += fibonacci_sequence[-1]
  end
end

p sum


i = 10
j = 10
largest_palindrome = 0

while i < 100
  while j < 100
    product = i * j
    # p product
    product_string = product.to_s
    # p product_string
    k = 0
    while k < product_string.length / 2
      if product_string[k] == product_string[(-k) - 1]
        # p product_string[k]
        # p product_string[(-k) - 1]
        k += 1
      else
        break
      end
      # p product
      largest_palindrome = product
      # if product > largest_palindrome
      # end
    end
    # p "-" * 22
    j += 1
  end
  j = 10
  i += 1
end

# p largest_palindrome
