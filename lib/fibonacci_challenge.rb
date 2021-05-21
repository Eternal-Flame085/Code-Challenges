# Refactored
def fibonacci
    fibonacci_nums = [0,1]
    total = 0
    
    while total < 4000000
        fibonacci_nums << fibonacci_nums[-2] + fibonacci_nums[-1]
        total += fibonacci_nums[-1] if fibonacci_nums[-1].even?
    end
    
    return total
end

puts fibonacci

# First Iteration
# def fibonacci
#     continue = true
#     nums = [0,1]
#     fibonacci_nums = [0,1]
    
#     while continue == true
#         if fibonacci_nums[-1] + fibonacci_nums[-2] >= 4000000
#             total = 0
#             continue = false
#             fibonacci_nums.each do |num|
#                 total += num if num.even?
#             end
#             return total
#         end

#         switch = true
#         nums.each.with_index do |num, index|
#             if switch == true
#                 fibonacci_nums << nums[index] = num += nums[1]
#                 switch = false
#             else
#                 fibonacci_nums << nums[index] = num += nums[0]
#                 switch = true
#             end
#         end
#     end
# end