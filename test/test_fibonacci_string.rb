require "minitest/autorun"
require_relative '../lib/fibonacci_string'

class TestEncodeMorse < Minitest::Test
    def setup
        @fibonacci = Fibonacci.new
    end

    def test_it_returns_j_h_jh_with_3_as_the_limit
        assert_equal ["j", "h", "hj"], @fibonacci.fib_str(3, ["j", "h"])
    end

    def test_it_returns_e_a_ae_aea_aeaae_with_5_as_the_limit
        assert_equal ["e", "a", "ae", "aea", "aeaae"], @fibonacci.fib_str(5, ["e", "a"])
    end

    def test_it_returns_n_k_kn_knk_knkkn_knkknkn_with_6_as_the_limit
        assert_equal ["n", "k", "kn", "knk", "knkkn", "knkknknk"], @fibonacci.fib_str(6, ["n", "k"])
    end
end