def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      puts "this is #{i}"
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
        puts "this is #{i} again"
      end
    end

    break if swapped == false
  end

  array
end

array = [4, 3, 2, 1, 7]


p bubble_sort(array)