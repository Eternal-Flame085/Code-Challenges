# Given a word, create a hash which stores the indexes of each letter in an array.

# Make sure the letters are the keys.
# Make sure the letters are symbols.
# Make sure the indexes are stored in an array and those arrays are values.

#Examples:
# map_letters("dodo") ➞ { :d=>[0, 2], :o=>[1, 3] }

# map_letters("froggy") ➞ { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }

# map_letters("grapes") ➞ { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

def map_letters(word)
	word.each_char.with_index.with_object({}) do |(char, index), indexes|
        if indexes.has_key?(char.to_sym)
            indexes[char.to_sym] << index
        else
            indexes[char.to_sym] = [index]
        end
	end
end
p map_letters("dodo") #{ :d=>[0, 2], :o=>[1, 3] }
p map_letters("froggy") #{ :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("grapes") #{ :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

p map_letters("")
p map_letters("a")
p map_letters("abcdefg")
p map_letters("balloon")
p map_letters("imagining")
p map_letters("mummy")
p map_letters("aaaaaaabaaabaaabbb")