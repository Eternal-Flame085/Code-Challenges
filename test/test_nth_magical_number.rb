require "minitest/autorun"
require_relative '../lib/nth_magical_number'

class TestNthMagicalNumber < Minitest::Test
    def setup
      @magical_number = NthMagicalNumber.new
    end
   
    def test_it_returns_2_with_n_1_a_2_b_3
      assert_equal 2, @magical_number.nth_magical_number(1,2,3)
    end

    def test_it_returns_6_with_n_4_a_2_b_3
        assert_equal 6, @magical_number.nth_magical_number(4,2,3)
    end

    def test_it_returns_10_with_n_5_a_2_b_4
        assert_equal 10, @magical_number.nth_magical_number(5,2,4)
    end

    def test_it_returns_8_with_n_3_a_6_b_4
        assert_equal 8, @magical_number.nth_magical_number(3,6,4)
    end

    def test_it_returns_0_if_n_is_0
        assert_equal 0, @magical_number.nth_magical_number(0,6,4)
    end
  end