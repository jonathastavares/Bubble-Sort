# frozen_string_literal: true

def bubble_sort_by(array)
  array.each_with_index do |x, i|
    array.each_with_index do |y, j|
      if yield(y, x).positive?
        store = array[i]
        array[i] = array[j]
        array[j] = store
      end
      next
    end
  end
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
