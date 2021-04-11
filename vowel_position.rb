# Write a function that accepts a single string parameter and replaces all the vowels [a,e,i,o,u] 
# with their respective positions within that string.
# Consider the string 1-indexed, IE, the first position in the string is position 1

def vowel_position(str)
    vowels = ['a','e','i','o','u']
    final_string = ''

    str.each_char.with_index do |letter, index|
        if vowels.include? letter
            final_string += (index + 1).to_s
        else
            final_string += letter
        end
    end

    final_string
end

puts vowel_position("hello")
puts vowel_position("Test string")