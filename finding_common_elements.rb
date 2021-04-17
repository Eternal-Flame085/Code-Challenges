# Create a function that takes two lists of numbers sorted 
# in ascending order and returns an array of numbers which are 
# common to both the input arrays.

#Examples
# common_elements([-1, 3, 4, 6, 7, 9], [1, 3]) ➞ [3]

# common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10]) ➞ [1, 3, 4, 7]

# common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5]) ➞ [1, 2, 4, 5]

# common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15]) ➞ []

#not using inclide?
# def common_elements(arr1, arr2)
# 	arr1.sort.each_with_object([]) do |element , matching_elements|
#         arr2.each do |element2|
# 			if element == element2
# 				matching_elements << element
# 			end
#         end
# 	end.uniq
# end

def common_elements(arr1, arr2)
	arr1.sort.each_with_object([]) do |element , matching_elements|
        matching_elements << element if arr2.include?(element)
	end.uniq
end



p common_elements([-1, 3, 4, 6, 7, 9], [1, 3])
p common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10])
p common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5])
p common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15])
p common_elements([3, 4, 2, 1, 9, -2], [1, 2, 3, 4, 7, 10])
p common_elements(['a', 'b', 'c', 'f', 'd', 'g'], ['z', 'w', 'o', 'a', 'd', 'c'])