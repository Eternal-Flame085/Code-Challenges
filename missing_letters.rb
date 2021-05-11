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
def missing_letters(string)
    ascii_numbers = string.bytes
    
    ascii_numbers.each_with_index do |num, index|
        if index > 0
            if num - 1 != ascii_numbers[index - 1]
                return "The missing number is #{ascii_numbers[index - 1].next.chr}"
            end
        end
    end
    return "Undifined"
end

p missing_letters("abce") #should return "d".
p missing_letters("abcdefghjklmno") #should return "i".
p missing_letters("stvwx") #should return "u".
p missing_letters("bcdf") #should return "e".
p missing_letters("abcdefghijklmnopqrstuvwxyz") #should return undefined.