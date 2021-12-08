require "minitest/autorun"
require_relative '../lib/pascals_triangle'

class TestMissingAlphabet < Minitest::Test
    def setup
      @pascals_triangle = PascalsTriangle.new
    end
   
    def test_with_num_of_rows_equaling_5
        assert_equal [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]], @pascals_triangle.generate(5)
    end

    def test_with_num_of_rows_equaling_1
        assert_equal [[1]], @pascals_triangle.generate(1)
    end

    def test_number_of_rows_is_at_least_1_if_not_return_error
        assert_equal "Must have at least one row", @pascals_triangle.generate(0)
    end
  end