# Subrectangle Queries challenge

# Implement the class SubrectangleQueries which receives a rows x cols rectangle as a matrix of integers in the constructor and supports two methods:

# 1. updateSubrectangle(int row1, int col1, int row2, int col2, int newValue)

# Updates all values with newValue in the subrectangle whose upper left coordinate is (row1,col1) and bottom right coordinate is (row2,col2).
# 2. getValue(int row, int col)

# Returns the current value of the coordinate (row,col) from the rectangle.

# Example
# Input
# ["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue","getValue"]
# [[[[1,2,1],[4,3,4],[3,2,1],[1,1,1]]],[0,2],[0,0,3,2,5],[0,2],[3,1],[3,0,3,2,10],[3,1],[0,2]]
# Output
# [null,1,null,5,5,null,10,5]
# Explanation
# SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,2,1],[4,3,4],[3,2,1],[1,1,1]]);  
# // The initial rectangle (4x3) looks like:
# // 1 2 1
# // 4 3 4
# // 3 2 1
# // 1 1 1
# subrectangleQueries.getValue(0, 2); // return 1
# subrectangleQueries.updateSubrectangle(0, 0, 3, 2, 5);
# // After this update the rectangle looks like:
# // 5 5 5
# // 5 5 5
# // 5 5 5
# // 5 5 5 
# subrectangleQueries.getValue(0, 2); // return 5
# subrectangleQueries.getValue(3, 1); // return 5
# subrectangleQueries.updateSubrectangle(3, 0, 3, 2, 10);
# // After this update the rectangle looks like:
# // 5   5   5
# // 5   5   5
# // 5   5   5
# // 10  10  10 
# subrectangleQueries.getValue(3, 1); // return 10
# subrectangleQueries.getValue(0, 2); // return 5

class SubrectangleQueries
    def initialize(rectangle)
        @rectangle = rectangle
    end

    def update_subrectangle(row1, col1, row2, col2, new_value)
        current_row = row1
        current_col = col1
        while current_row <= row2
            while current_col <= col2
                @rectangle[current_row][current_col] = new_value
                current_col += 1
            end
            current_row += 1
            current_col = 0
        end
    end

    def get_value(row, col)
        @rectangle[row][col]
    end

    def show_rectangle
        @rectangle.each do |array|
            p array
        end
    end
end
    
rectangle =[[1,2,1],[4,3,4],[3,2,1],[1,1,1]]
obj = SubrectangleQueries.new(rectangle)
obj.update_subrectangle(0, 0, 3, 2, 5)
obj.update_subrectangle(3, 0, 3, 2, 10)
p obj.get_value(3,1)
p obj.get_value(0,2)

p "second example"
rectangle = [[6,9,6,1,2],[8,8,6,5,9],[7,6,10,8,2],[7,7,4,9,1]]
obj = SubrectangleQueries.new(rectangle)
obj.update_subrectangle(1,4,2,4,5)
obj.show_rectangle
p obj.get_value(3,4)
p obj.get_value(2,4)
p obj.get_value(3,4)
obj.update_subrectangle(3,4,3,4,8)
obj.show_rectangle
p obj.get_value(3,0)
obj.update_subrectangle(1,3,3,4,3)
obj.show_rectangle
p obj.get_value(2,0)