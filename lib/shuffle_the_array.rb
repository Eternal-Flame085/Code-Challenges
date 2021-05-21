def shuffle(nums, n)
  nums[0..n-1].zip(nums[n..-1]).flatten

  ## Another solution
  # slice_nums = nums.each_slice(n).to_a
  # a = 0
  # n.times do |i|
  #   nums[a] = slice_nums[0][i]
  #   a += 1
  #   nums[a] = slice_nums[1][i]
  #   a += 1
  # end

  ## One solution
  # x = nums[0..n-1]
  # y = nums[n..nums.count]
  # array = []
  # x.count.times do |index|
  #   array << [x[index],y[index]]
  # end
  # array.flatten
end

p shuffle([2,5,1,3,4,7], 3)
