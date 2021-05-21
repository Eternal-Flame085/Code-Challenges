def maximum_wealth(accounts)
  accounts.map{|account| account.sum}.max
end

p maximum_wealth([[1,2,3],[3,2,1]])
