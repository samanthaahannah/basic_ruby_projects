def bubble_sort(array)
  array.each_with_index do |num1, num1_idx|
    array.each_with_index do |num2, num2_idx|
      next unless num1 > num2

      array[num1_idx],
      array[num2_idx] =
        array[num2_idx],
        array[num1_idx]
    end
  end
  print array.reverse
end

bubble_sort([3, 10, 78, 9, 62, 8])
