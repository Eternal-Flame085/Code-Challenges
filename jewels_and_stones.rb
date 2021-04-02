def num_jewels_in_stones(jewels, stones)
  count = 0
  stones.chars.each do |s_c|
    count += 1 if jewels.include?(s_c)
  end
  count

  # stones.chars.count {|stone| jewels.include?(stone) }

  # stones.count(jewels)
end

jewels = "aA"
stones = "aAAbbbb"
p num_jewels_in_stones(jewels, stones)
