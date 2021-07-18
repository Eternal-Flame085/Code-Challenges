require "minitest/autorun"
require_relative '../lib/valid_palendrome'

class TestRomanNumerals< Minitest::Test
    def setup
      @palendrome = Palindrome.new
    end
   
    def test_it_retures_true_from_A_man_a_plan_a_canal_Panama
        assert_equal true, @palendrome.is_palindrome("A man, a plan, a canal: Panama")
    end

    def test_it_retures_true_from_a
        assert_equal true, @palendrome.is_palindrome("a")
    end

    def test_it_retures_false_from_race_a_car
        assert_equal false, @palendrome.is_palindrome("race a car")
    end
  end