# frozen_string_literal: true

def bubble_sort_by(array)
  array.each_with_index do |x, i|
    array.each_with_index do |y, j|
      if yield(y, x).positive?
        array[i], array[j]= array[j], array[i]
      end
      next
    end
  end
end

result=bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

print result
