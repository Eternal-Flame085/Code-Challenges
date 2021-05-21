def num_identical_pairs(nums)
    # Solution 1
    #hash = Hash.new
    # pairs = 0
    # nums.each do |num|
    #   hash[num] = 0 if hash[num] == nil
    #   hash[num] += 1
    # end
    #
    #solution 2
    # hash.each do|instances|
    #   pairs += (instances[1] * (instances[1] - 1))/2
    # end
    # pairs
    #
    # Solution 3
    counter = 0
    nums.each_with_index do |f_n, i|
        nums[i+1..-1].each do |s_n|
            counter += 1 if f_n == s_n
        end
    end
    counter
end

nums = [1,2,3,1,1,3]
p num_identical_pairs(nums)
