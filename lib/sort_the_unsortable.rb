# Sort the Unsortable
# In this challenge you will be given an array similar to the following:

# [[3], 4, [2], [5], 1, 6]
# In words, elements of the array are either an integer or an array containing a single integer. If you try to sort this array via ([[3], 4, [2], [5], 1, 6]).sort, Ruby will whine about not being able to compare integers and arrays.

# However, us humans can clearly see that this array can reasonably be sorted according to "the content of the elements" as:

# [1, [2], [3], 4, [5], 6]
# Create a function that, given an array similar to the above, sorts the array according to the "content of the elements".

# Examples
# sort_it([4, 1, 3]) ➞ [1, 3, 4]

# sort_it([[4], [1], [3]]) ➞ [[1], [3], [4]]

# sort_it([4, [1], 3]) ➞ [[1], 3, 4]

# sort_it([[4], 1, [3]]) ➞ [1, [3], [4]]

# sort_it([[3], 4, [2], [5], 1, 6]) ➞ [1, [2], [3], 4, [5], 6]
# Notes
# To reiterate, elements of the array will be either integers or arrays with a single integer.

def sort_it(arr)
	sorted_numbers = []
	array_nums = arr.each_with_object([]) do |ele, collector|
		collector << ele[0] if ele.class == Array
		sorted_numbers << ele[0] if ele.class == Array
		sorted_numbers << ele if ele.class == Integer
	end
	
	sorted_numbers.sort!
	if array_nums.count > 0
		sorted_numbers.sort!.each_with_index do |num, index|
			if array_nums.include?(num)
				sorted_numbers[index] = [num]
			end
		end
	end

	sorted_numbers
end

p sort_it([4, 1, 3])
p sort_it([4, [1], 3])
p sort_it([[4], 1, [3]])
p sort_it([[3], 4, [2], [5], 1, 6])