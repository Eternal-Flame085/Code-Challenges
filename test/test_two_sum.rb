require "minitest/autorun"
require_relative '../lib/two_sum'

class TestRomanNumerals< Minitest::Test
    def setup
      @two_sum = TwoSum.new
    end
   
    def test_it_returns_the_right_two_indexes_that_add_up_to_9
        assert_equal [0,1], @two_sum.two_sum([2,7,11,15], 9)
    end

    def test_it_returns_the_right_two_indexes_that_add_up_to_6
        assert_equal [1,2], @two_sum.two_sum([3,2,4], 6)
    end

    def test_it_returns_the_right_two_indexes_0_and_1_that_add_up_to_6
        assert_equal [0,1], @two_sum.two_sum([3,3], 6)
    end
end