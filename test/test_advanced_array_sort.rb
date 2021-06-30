require "minitest/autorun"
require_relative '../lib/advanced_array_sort'

class TestAdvancedArraySort< Minitest::Test
    def setup
      @sort = AdvancedArraySort.new
    end
   
    def test_it_returnes_different_elements_sorted_into_their_own_arrays
        assert_equal [[2, 2], [1, 1]], @sort.advanced_sort([2, 1, 2, 1])
    end

    def test_it_returnes_different_elements_sorted_into_their_own_arrays_2
        assert_equal [[5, 5, 5], [4, 4], [3]], @sort.advanced_sort([5, 4, 5, 5, 4, 3])
    end

    def test_it_returnes_different_elements_sorted_into_their_own_arrays_3
        assert_equal [["b", "b"], ["a", "a"], ["c"]], @sort.advanced_sort(["b", "a", "b", "a", "c"])
    end
  end