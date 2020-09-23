# frozen_string_literal: true

def bubble_sort(array)
  array.each_with_index do |x, i|
    array.each_with_index do |y, j|
      if x < y
        store = array[i]
        array[i] = array[j]
        array[j] = store
      end
      next
    end
  end
end

bubble_sort_array = [10, 154, 8, 2, 15, 2, 1, 0]

bubble_sort(bubble_sort_array)

print bubble_sort_array
