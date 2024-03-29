# A positive integer is magical if it is divisible by either a or b.

# Given the three integers n, a, and b, return the nth magical number. Since the answer may be very large, return it modulo 109 + 7.

# Example 1:
# Input: n = 1, a = 2, b = 3
# Output: 2

# Example 2:
# Input: n = 4, a = 2, b = 3
# Output: 6

# Example 3:
# Input: n = 5, a = 2, b = 4
# Output: 10

# Example 4:
# Input: n = 3, a = 6, b = 4
# Output: 8

class NthMagicalNumber
    def nth_magical_number(n, a, b)
        return 0 if n == 0
        
        nth_counter = 0
        1000000000.times do |num|
            next if num == 0
            
            if num % a == 0|| num % b == 0
                nth_counter += 1
                return num if nth_counter == n
            end
        end
    end
end