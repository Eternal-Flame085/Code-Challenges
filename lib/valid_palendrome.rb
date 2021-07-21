# 125. Valid Palindrome
# Given a string s, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# Example 1:

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:

# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.

# Constraints:

# 1 <= s.length <= 2 * 105
# s consists only of printable ASCII characters.

class Palindrome
    def is_palindrome(s)
        s.downcase!
        s.gsub!(/[^0-9A-Za-z]/,'')
        palendrome = s.reverse
    
        return true if palendrome == s
        return false
    end
end