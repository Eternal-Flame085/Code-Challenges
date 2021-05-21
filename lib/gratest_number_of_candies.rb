def kids_with_candies(candies, extra_candies)
  biggest = candies.max
  candies.map do |candy|
    (candy + extra_candies) >= biggest
  end
end

p kids_with_candies([2,3,5,1,3], 3)
