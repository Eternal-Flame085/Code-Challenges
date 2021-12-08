# Pascal's Triangle

# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

# Example 1:
# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]

# Example 2:
# Input: numRows = 1
# Output: [[1]]
 
# Constraints:

# 1 <= numRows <= 30

class PascalsTriangle
    def generate(num_rows)
        pascals_triangle = []
        if num_rows > 0
            num_rows.times.with_index do |row_size, row_index|
                row_size += 1
                row_index -= 1
                row = []
                row_size.times do |index|
                    if index == 0 || index + 1 == row_size
                        row << 1
                    else
                        row << pascals_triangle[row_index][index - 1] + pascals_triangle[row_index][index]
                    end
                end
                pascals_triangle << row
            end
            return pascals_triangle
        else
            return "Must have at least one row"    
        end
    end
end