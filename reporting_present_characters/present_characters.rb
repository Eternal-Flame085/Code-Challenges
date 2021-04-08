# Write a method that accepts a string as a parameter. 
# The method should count all the occurring characters in the 
# string and return a report of the characters present and how many instances of the character exist in the string. 
# If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.
# characters can be numbers as well
# don't get hung up on case

# First attempt
# def present_characters(str)
#     characters = {}

#     str.each_char do |character|
        # if characters.key?(character)
        #     characters[character] += 1
        # else
        #     characters[character] = 1
        # end
#     end
#     characters
# end

# Second attempt with with_object
def present_characters(str)
    str.each_char.with_object({}) do |char, characters|
        if characters.key?(char.downcase)
            characters[char] += 1
        else
            characters[char.downcase] = 1
        end
    end
end

puts present_characters("hello")
puts present_characters("Roberto")
puts present_characters("Testing with a long string there should be 6 s with this string!")