def running_sum(nums)
  total = 0
  nums.map do |num|
    total += num
  end
end

puts running_sum([1,2,3,4])
