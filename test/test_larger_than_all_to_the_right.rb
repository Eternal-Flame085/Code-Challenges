require "minitest/autorun"
require_relative '../lib/larger_than_all_to_the_right'

class TestEncodeMorse < Minitest::Test
    def setup
      @larger = LargerThanRight.new
    end
   
    def test_it_returns_all_the_numbers_that_are_bigger_to_the_right
      assert_equal [13, 11, 9, 5], @larger.larger_than_right([3, 13, 11, 2, 1, 9, 5])
    end

    def test_it_returns_all_the_numbers_that_are_bigger_to_the_right
      assert_equal [5], @larger.larger_than_right([5, 5, 5, 5, 5, 5])
    end

    def test_it_returns_all_the_numbers_that_are_bigger_to_the_right
      assert_equal [9, 8, 7], @larger.larger_than_right([5, 9, 8, 7])
    end
  end