# A Fibonacci string is a precedence of the Fibonacci series. 
# It works with any two characters of the English alphabet (as opposed to the numbers 0 and 1 in the Fibonacci series) as 
# the initial items and concatenates them together as it progresses in a similar fashion as the Fibonacci series.

# Examples
# fib_str(3, ["j", "h"]) ➞ "j, h, hj"

# fib_str(5, ["e", "a"]) ➞ "e, a, ae, aea, aeaae"

# fib_str(6, ["n", "k"]) ➞ "n, k, kn, knk, knkkn, knkknknk"

def fib_str(n, str)
    fibonacci_string = str

	(n-2).times do
        fibonacci_string << fibonacci_string[-1] + fibonacci_string[-2]
	end

    fibonacci_string
end

p fib_str(3, ["j", "h"]) # ➞ "j, h, hj"

p fib_str(5, ["e", "a"]) # ➞ "e, a, ae, aea, aeaae"

p fib_str(6, ["n", "k"]) # ➞ "n, k, kn, knk, knkkn, knkknknk"