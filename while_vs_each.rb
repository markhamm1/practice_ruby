numbers = [5,2,6,1]

sum1 = 0
index1 = 0
index2 = numbers.length - 1

while index1 < numbers.length / 2
  sum1 += numbers[index1] + numbers[index2]
  index1 += 1
  index2 -= 1
end

p sum1

sum3 = 0
numbers.each do |number|
  sum3 += number
end

p sum3

sum = 0
index = 0

while index < numbers.length
  sum += numbers[index]
  index += 1
end

p sum

