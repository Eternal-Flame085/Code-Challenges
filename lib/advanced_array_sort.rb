# Advanced Array Sort
# Create a function that takes an array of numbers or strings and returns an array with the items from the original array stored into subarrays. Items of the same value should be in the same subarray.

# Examples
# advanced_sort([2, 1, 2, 1]) ➞ [[2, 2], [1, 1]]

# advanced_sort([5, 4, 5, 5, 4, 3]) ➞ [[5, 5, 5], [4, 4], [3]]

# advanced_sort(["b", "a", "b", "a", "c"]) ➞ [["b", "b"], ["a", "a"], ["c"]]
# Notes
# The subarrays should be returned in the order of each element's first appearance in the given array.

class AdvancedArraySort
    # #first and innefitient try
    # def advanced_sort(arr)
    #    arr.each_with_object([]) do |each_ele, arr_collector|
    #         arr_collector << arr.each_with_object([]) do |ele, collector|
    #             collector << ele if each_ele == ele
    #         end
    #     end.uniq
    # end

    #Second attempt
    #should be more efficient than the first when working with bigger data sets because it will only loop
    #through the array once per uniq element while the one above will loop over even if the element has already been collected
    #thats why the .uniq was required for the one above.
    def advanced_sort(arr)
        uniq_arr = arr.uniq

        uniq_arr.each_with_object([]) do |ele, arr_collector|
           arr_collector << arr.each_with_object([]) do |each_ele, collector|
                collector << each_ele if each_ele == ele
            end
        end
    end
end