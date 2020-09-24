def bubble_sort_by(array)
  array.each_with_index do |x, i|
    array.each_with_index do |y, j|
      array[i], array[j] = array[j], array[i] if yield(y, x).positive?
      next
    end
  end
end

result = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

print result
