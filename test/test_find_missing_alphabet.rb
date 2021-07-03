require "minitest/autorun"
require_relative '../lib/find_missing_alphabet'

class TestMissingAlphabet < Minitest::Test
    def setup
      @missing_alphabet = MissingAlphabet.new
    end
   
    def test_it_returns_z_as_missing
      assert_equal "z", @missing_alphabet.missing_alphabets("abcdefghijklmnopqrstuvwxy")
    end

    def test_it_returns_zz_as_missing
        assert_equal "zz", @missing_alphabet.missing_alphabets("aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyy")
    end

    def test_it_returns_azzz_as_missing
        assert_equal "azzz", @missing_alphabet.missing_alphabets("aabbbcccdddeeefffggghhhiiijjjkkklllmmmnnnooopppqqqrrrssstttuuuvvvwwwxxxyyy")
    end

    def test_it_returns__cfghjklmnopqrsuvwxyz_missing
        assert_equal "cfghjklmnopqrsuvwxyz", @missing_alphabet.missing_alphabets("edabit")
    end
  end