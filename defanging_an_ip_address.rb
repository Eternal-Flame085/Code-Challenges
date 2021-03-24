def defang_i_paddr(address)
  address.gsub('.', '[.]')
end

p defang_i_paddr("1.1.1.1")
