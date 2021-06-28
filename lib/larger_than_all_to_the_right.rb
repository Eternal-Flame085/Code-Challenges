# Larger than All Numbers to Their Right

# Create a function that retrieves every number that is strictly larger than every number that follows it.

# Examples
# larger_than_right([3, 13, 11, 2, 1, 9, 5]) ➞ [13, 11, 9, 5]
# # 13 is larger than all numbers to its right, etc.

# larger_than_right([5, 5, 5, 5, 5, 5]) ➞ [5]
# # Must be strictly larger.
# # Always include the last number.

# larger_than_right([5, 9, 8, 7]) ➞ [9, 8, 7]
# Notes
# The last number in an array is trivially strictly larger than all numbers that follow it (no numbers follow it).

class LargerThanRight
    def larger_than_right(num_arr)
        larger_than_right = []
        max_array_index = num_arr.length - 1
        
        num_arr.each_with_index do |num, index|
            if index == max_array_index
                larger_than_right << num
            else
                larger_than_right << num if num > (num_arr[(index + 1)..-1].max)
            end
        end
        
        larger_than_right
    end
end