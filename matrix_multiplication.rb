# Matrix Multiplication
# Create a function that multiplies two matricies (n x n each).

# Examples
# matrix_mult([[4, 2],[3, 1]], [[5, 6], [3, 8]]) ➞ [[26, 40], [18, 26]]

# matrix_mult([[3, 6],[4, 5]], [[8, 1], [7, 2]]) ➞ [[66, 15], [67, 14]]

# matrix_mult([[7, 5],[2, 2]], [[6, 7], [3, 2]]) ➞ [[57, 59], [18, 18]]
# Notes
# Limit yourself to 2 x 2 matricies.

def matrix_mult(m1, m2)
	matrix_result = []

    m2.transpose.map.with_index do |arr, index|
        2.times do |count|
            num_to_add = arr.map.each_with_index do |num, index2|
                num * m1[count][index2]
            end

            matrix_result << num_to_add[0] + num_to_add[1]
        end
    end
    
    matrix_result.each_slice(2).to_a.transpose
end

p matrix_mult([[4, 2],[3, 1]], [[5, 6], [3, 8]]) # ➞ [[26, 40], [18, 26]]

p matrix_mult([[3, 6],[4, 5]], [[8, 1], [7, 2]]) # ➞ [[66, 15], [67, 14]]

p matrix_mult([[7, 5],[2, 2]], [[6, 7], [3, 2]]) # ➞ [[57, 59], [18, 18]]