# Total Sales of Product
# In this question you will be given a table as below, where the first row lists the names of products, 
# and each of row after that lists the sales of the product for each day (over some time range).

# [
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ]
# Write a function that receives:

# A sales table sales_table as shown above.
# The name of a product product.
# ... and returns the total sales if the product is on the array, otherwise return the string "Product not found".

# Examples
# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "A") ➞ 9

# # 2 + 3 + 4 = 9


# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "C") ➞ 12

# # 1 + 6 + 5 = 12


# total_sales([
#   ["A", "B", "C"],
#   [ 2 ,  7 ,  1 ],
#   [ 3 ,  6 ,  6 ],
#   [ 4 ,  5 ,  5 ]
# ], "D") ➞ "Product not found"
# Notes
# The examples above all use the same sales table, but in the tests the table will vary.

# Soulution not using Transpose method
# def total_sales(sales_table, product)
#     total_sales = 0

#     if sales_table[0].include?(product)
#         product_index = sales_table[0].index(product)
        
#         sales_table[1..-1].each do |table|
#             total_sales += table[product_index]
#         end
#     else
#         return "Product not found"
#     end

#     return total_sales
# end

# Solution Using transpose method
def total_sales(sales_table, product)
	total_sales = 0
    
    sales_table.transpose.each do |table|
        if table.include?(product)
            table[1..-1].each do |sale|
                total_sales += sale
            end
        end
    end

    return "Product not found" if total_sales == 0
    return total_sales
end

p total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "A") # ➞ 9

# 2 + 3 + 4 = 9


p total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "C") # ➞ 12

# 1 + 6 + 5 = 12


p total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "D") # ➞ "Product not found"
