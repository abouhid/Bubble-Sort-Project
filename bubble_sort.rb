def bubble_sort(array)
  k = array.length - 1

  if array.any? String
    puts 'not a valid array'
  else
    (0..k).each do |_i|
      (0..k).each do |i|
        array[i], array[i + 1] = array[i + 1], array[i] if array[i].to_f > array[i + 1].to_f && i != k
      end
    end
    array
  end
end

def bubble_sort_by(array)
  if array.all? String
    k = array.length - 1
    (0..k).each do |_i|
      (0..k).each do |i|
        next unless i != k

        array[i], array[i + 1] = array[i + 1], array[i] if yield(array[i], array[i + 1]).positive?
      end
    end
    array
  else
    puts 'not a valid array'
  end
end

puts 'Result of bubble_sort():'
print bubble_sort([4, -3, 37.3, -78, 2.4, 0, 4])
puts "\nResult of bubble_sort_by():"
print(bubble_sort_by(['hi', 'hello', 'goodbye', 'hey!']) do |left, right|
  left.length - right.length
end)
