def binary(integer)
  output = ""
  while integer != 0
    output += (integer % 2).to_s
    integer /= 2
  end
  output.reverse
end

p binary(8)
