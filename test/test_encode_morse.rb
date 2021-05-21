require "minitest/autorun"
require_relative '../lib/encode_morse'

class TestEncodeMorse < Minitest::Test
    def setup
      @morse = EncodeMorse.new
    end
   
    def test_it_returns_morse_for_EDABBIT_CHALLENGE
      assert_equal ". -.. .- -... -... .. -   -.-. .... .- .-.. .-.. . -. --. .", @morse.encode_morse("EDABBIT CHALLENGE")
    end

    def test_it_returns_morse_for_EDABBIT_CHALLENGE_lowercased
        assert_equal ". -.. .- -... -... .. -   -.-. .... .- .-.. .-.. . -. --. .", @morse.encode_morse("edabbit challenge")
      end

    def test_it_returns_morse_for_HELP_ME
        assert_equal ".... . .-.. .--.   -- .   -.-.--", @morse.encode_morse("HELP ME !")
    end
  end