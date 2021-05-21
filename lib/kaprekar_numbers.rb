# A Kaprekar Number is a positive integer that, after being squared and split into two lexicographical parts,
# is equal to the sum of the two new numbers obtained:

#   -If the quantity of digits of the squared number is even, the left and right parts will have the same length.
#   -If the quantity of digits of the squared number is odd, then the right part will be the longer half, 
#   with the left part being the shorter or equal to zero if the quantity of digits is equal to 1.

#  Given a positive integer n implement a function that returns true if it's a Kaprekar number, and false if it's not.

# Examples:
# is_kaprekar(3) ➞ false
# n² = "9"
# Left + Right = 0 + 9 = 9 ➞ 9 != 3

# is_kaprekar(5) ➞ false
# n² = "25"
# Left + Right = 2 + 5 = 7 ➞ 7 != 5

# is_kaprekar(297) ➞ true
# n² = "88209"
# Left + Right = 88 + 209 = 297 ➞ 297 == 297

def is_kaprekar(num)
    require 'pry'; binding.pry 
    squared_num = (num ** 2).to_s
    first_half, second_half = squared_num[0...squared_num.length/2].to_i, squared_num[squared_num.length/2...squared_num.length].to_i
    
    if first_half + second_half == num
        return true
    else
        return false
    end
end

puts is_kaprekar(1) # true
puts is_kaprekar(2) # false
puts is_kaprekar(3) # false
puts is_kaprekar(5) # false
puts is_kaprekar(9) # true
puts is_kaprekar(65) # false
puts is_kaprekar(99) # true
puts is_kaprekar(297) # true
puts is_kaprekar(348) # false
puts is_kaprekar(666) # false
puts is_kaprekar(1441) # false
puts is_kaprekar(77778) # true
puts is_kaprekar(102102) # false
puts is_kaprekar(533170) # true