require "minitest/autorun"
require_relative '../lib/single_numbers'

class TestRomanNumerals< Minitest::Test
    def setup
      @single_num = SingleNumbers.new
    end
   
    def test_it_retures_1_from_2_2_1
        assert_equal 1, @single_num.single_number([2,2,1])
    end

    def test_it_retures_4_from_4_1_2_1_2
        assert_equal 4, @single_num.single_number([4,1,2,1,2])
    end

    def test_it_retures_1_from_1
        assert_equal 1, @single_num.single_number([1])
    end
end