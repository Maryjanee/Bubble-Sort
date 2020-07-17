# Bubble Sort Method
def bubble_sort(array)
  len = array.length - 2
  counter = true
  while counter == true
    counter = false
    (0..len).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      counter = true
    end
    len -= 1
  end
  array
end

# Bubble Sort By Method
def bubble_sort_by(array)
  len = array.length - 2
  counter = true
  while counter == true
    counter = false
    (0..len).each do |i|
      if (yield array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        counter = true
      end
    end
    len -= 1
  end
  array
end
