def number_of_steps(num)
    if num >= 0
        steps = 0
        while num != 0
            if num.even?
                num /= 2
                steps += 1
            else
                num -= 1
                steps += 1
            end
        end
        return steps
    else
        return 'Number must be greater than zero'
    end
end

puts number_of_steps(14)
puts number_of_steps(123)
puts number_of_steps(0)
puts number_of_steps(-5)