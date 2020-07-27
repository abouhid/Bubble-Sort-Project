def buble_sort_two(array)
  w = array.length

  loop do
    swap = false
    (w - 1).times do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num + 1], array[num]
        swap = true
      end
    end
    break if swap == false
  end

  array
end

print buble_sort_two([1, 40, 2])

def bubble_sort_by(array)
  w = array.length

  loop do
    swap = false
    (w - 1).times do |num|
      next unless yield(array[num], array[num + 1]).positive?

      array[num], array[num + 1] = array[num + 1], array[num]
      swap = true
    end
    break if swap == false
  end

  print array
end

bubble_sort_by(%w[hi hello]) do |left, right|
  left.length - right.length
end
