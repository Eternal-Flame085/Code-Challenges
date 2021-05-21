# def flatten(array)
#   array.each do |contents|
#     if contents.class == Array
#       index = array.index(contents)
#       contents.reverse.each do |content|
#         array.insert(index, content)
#       end
#       array.delete(contents)
#       flatten(array)
#     end
#   end
# end

# Not that efficiaent
def flatten(array)
  output = []
  while !array.empty?
    if array[0].class != Array
      output << array[0]
      array.delete(array[0])
    else
      array[0].each do |contents|
        output << contents
      end
      array.delete(array[0])
    end
  end
  output.each do |contents|
    return flatten(output) if contents.class == Array
  end
  output
end

p flatten([1,2,[3],[4,[5,6,[7,[8,9]]]]])
