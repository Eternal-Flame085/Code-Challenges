# Create a function that builds a staircase given the height and the type of building block.
#Examples:
# build_staircase(3, "#") ➞ [
#     ["#", "_", "_"],
#     ["#", "#", "_"],
#     ["#", "#", "#"]
#   ]
  
#   build_staircase(4, "#") ➞ [
#     ["#", "_", "_", "_"],
#     ["#", "#", "_", "_"],
#     ["#", "#", "#", "_"],
#     ["#", "#", "#", "#"]
#   ]
  
#   build_staircase(3, "A") ➞ [
#     ["A", "_", "_"],
#     ["A", "A", "_"],
#     ["A", "A", "A"]
#   ]
  
#   # height = 3 and building block = "A"
  
#   build_staircase(4, "$") ➞ [
#     ["$", "_", "_", "_"],
#     ["$", "$", "_", "_"],
#     ["$", "$", "$", "_"],
#     ["$", "$", "$", "$"]
#   ]
# height = 4 and building block = "$"

# If the height is 0, return an empty array [].

def build_staircase(height, block)
	height.times.with_object([]) do |index, staircase|
        row = Array.new(height, "_")
        staircase << row.fill(block, 0..index)
	end
end

p "(3, '#')"
build_staircase(3, '#').each do |row|
    p row
end

puts ""
p "(4, '$')"
build_staircase(4, '$').each do |row|
    p row
end

puts ""
p "(3, 'A')"
build_staircase(3, 'A').each do |row|
    p row
end

puts ""
p "(10, '-')"
build_staircase(10, '#').each do |row|
    p row
end