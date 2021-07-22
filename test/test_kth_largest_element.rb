require "minitest/autorun"
require_relative '../lib/kth_largest_element'

class TestRomanNumerals< Minitest::Test
    def setup
      @kth_largest_element = LargestElement.new
    end
   
    def test_it_returns_the_2nd_largest_element
        assert_equal 5, @kth_largest_element.find_kth_largest([3,2,1,5,6,4], 2)
    end

    def test_it_returns_the_2nd_largest_element
        assert_equal 4, @kth_largest_element.find_kth_largest([3,2,3,1,2,4,5,5,6], 4)
    end
end