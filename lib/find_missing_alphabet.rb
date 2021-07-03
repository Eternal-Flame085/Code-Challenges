# Find Missing Alphabets
# Create a function that takes a string str containing only letters from a to z in lowercase and returns the missing letter(s) in alphabetical order a-z.

# A set of letters is given by abcdefghijklmnopqrstuvwxyz.
# Two sets of alphabets means two or more alphabets.
# Examples
# missing_alphabets("abcdefghijklmnopqrstuvwxy") ➞ "z"
# # "z" is missing.

# missing_alphabets("aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy") ➞ "zz"
# # Given string has a set of two alphabets so output will be "zz"

# missing_alphabets("edabit") ➞ "cfghjklmnopqrsuvwxyz"
# Notes
# If the string contains all letters from a-z, return an empty string "".

class MissingAlphabet
    def initialize
        @alphabet = ("a".."z").to_a
    end

    def missing_alphabets(str)
        missing_letters = @alphabet
        
        if str.length > 26
            (str.length / 26).times do
                missing_letters += @alphabet
            end
        end

        str.each_char do |letter|
            if missing_letters.include?(letter)
                missing_letters.delete_at(missing_letters.index(letter))
            end
        end

        missing_letters.sort.join
    end
end