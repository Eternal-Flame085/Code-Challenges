# The Alternating Numbers
# In this challenge, you have to establish if an integer num is Alternating. To be Alternating, num must be positive and 
# every digit in its sequence must have a different parity than its next and its previous digit.

# Given an integer num, implement a function that returns true is num is an Alternating number, or false if it's not.

# Examples
# is_alternating(123) ➞ true
# # 1 is odd, 2 is even, 3 is odd

# is_alternating(67) ➞ true
# # 6 is even, 7 is odd

# is_alternating(2380) ➞ false
# # 2 is even, 3 is odd, 8 is even, 0 is even

# is_alternating(75) ➞ false
# # 7 is odd, 5 is odd
# Notes
# A single-digit number is trivially considered Alternating, given the absence of neighboring digits.
# The first digit has to be compared only to its next neighbor, and the last digit has to be compared only to its previous neighbor.
# Every non-positive integer must be treated as false.

def is_alternating(num)
    alternating = true
	num_arr = num.to_s.chars.map { |digit| digit.to_i }

    num_arr.each_with_index do |num, index|
        if index == 0
            return false if num.even? == num_arr[index + 1].even?
        elsif index == num_arr.length - 1
            return false if num.even? == num_arr[index - 1].even?
        else
            return false if num.even? == num_arr[index + 1].even? || num.even? == num_arr[index - 1].even?
        end
    end
    alternating
end

p is_alternating(123) # true

p is_alternating(67) # true

p is_alternating(2380) # false

p is_alternating(75) # false