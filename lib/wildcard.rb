# if the target exists in the array return true
# target string could have wildcards as "*" and the program should be able to still find the target
# word with the wildcards

class Wildcard
    def find_target(array, target)
        if target.include?("*")
            array.each do |word|
                match = false
                target.each_char.with_index do |letter, index|
                    if  target.length == index + 1 && letter == word[index]
                        match = true
                    elsif letter == word[index] || letter == "*"
                        next
                    elsif letter != word[index]
                        break
                    end
                end

                return true if match == true
            end
        elsif array.include?(target)
            return true
        else
            return false
        end
    end
end