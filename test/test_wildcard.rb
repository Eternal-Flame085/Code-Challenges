require "minitest/autorun"
require_relative '../lib/wildcard'

class TestWildcard< Minitest::Test
    def setup
      @wildcard = Wildcard.new
    end
   
    def test_it_retures_true_if_target_string_exists_in_array
        assert_equal true, @wildcard.find_target(["hello", "meaning", "hospitality"], "hospitality")
    end

    def test_it_retures_true_if_target_string_exists_in_array_even_with_wildcard_in_string
        assert_equal true, @wildcard.find_target(["midnight", "grateful", "offset"], "grat*ful")
    end

    def test_it_retures_true_if_target_string_exists_in_array_even_with_multiple_wildcards_in_string
        assert_equal true, @wildcard.find_target(["habitat", "voucher", "defendant"], "d*fe**ant")
    end
  end