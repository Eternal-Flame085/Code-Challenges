# Instructions
# Find the missing letter in the passed letter range and return it.

# If all letters are present in the range, return undefined.

# Test Cases
# missing_letters("abce") should return "d".
# missing_letters("abcdefghjklmno") should return "i".
# missing_letters("stvwx") should return "u".
# missing_letters("bcdf") should return "e".
# missing_letters("abcdefghijklmnopqrstuvwxyz") should return undefined.

# Works for one Letter / First iteration
# def missing_letters(string)
#     ascii_numbers = string.bytes
    
#     ascii_numbers.each_with_index do |num, index|
#         if index > 0
#             if num - 1 != ascii_numbers[index - 1]
#                 return "The missing letter is #{ascii_numbers[index - 1].next.chr}"
#             end
#         end
#     end
#     return "Undifined"
# end

def missing_letters(string)
    ascii_numbers = string.bytes
    missing_letters = []
    
    ascii_numbers.each_with_index do |num, index|
        if index > 0
            if num - 1 != ascii_numbers[index - 1]
                missing_letters << ascii_numbers[index - 1].next.chr
            end
        end
    end

    return "Undifined" if missing_letters.empty?
    return "The missing letters are #{missing_letters}"
end

puts missing_letters("abcegh") #should return "d, f".
puts missing_letters("abcdefghjklmo") #should return "i, n".
puts missing_letters("stvwx") #should return "u".
puts missing_letters("bcdf") #should return "e".
puts missing_letters("abcdefghijklmnopqrstuvwxyz") #should return undefined.