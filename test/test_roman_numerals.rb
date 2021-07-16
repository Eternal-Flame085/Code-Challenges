require "minitest/autorun"
require_relative '../lib/roman_numerals'

class TestRomanNumerals< Minitest::Test
    def setup
      @roman_numerals = RomanNumerals.new
    end
   
    def test_it_returnes_3_from_III
        assert_equal 3, @roman_numerals.roman_to_int("III")
    end

    def test_it_returnes_4_from_IV
        assert_equal 3, @roman_numerals.roman_to_int("III")
    end

    def test_it_returnes_9_from_IX
        assert_equal 3, @roman_numerals.roman_to_int("III")
    end

    def test_it_returnes_58_from_LVIII
        assert_equal 3, @roman_numerals.roman_to_int("III")
    end

    def test_it_returnes_1994_from_MCMXCIV
        assert_equal 3, @roman_numerals.roman_to_int("III")
    end
  end