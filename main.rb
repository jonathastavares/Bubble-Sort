def bubble_sort (array)
    for i in 0..(array.length - 1)
        for j in 0..(array.length - 1)
            if array[i] < array[j]
                store = array[i]
                array[i] = array[j]
                array[j] = store
            end
        end
    end
    print array
end

i = 0

bubble_sort_array = [10, 154, 8, 2, 15, 2, 1, 0]

bubble_sort(bubble_sort_array)