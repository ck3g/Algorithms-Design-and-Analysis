def count_inversions(array)
  sort_count(array).last
end

def sort_count(array)
  return *[array, 0] if array.length == 1

  middle = array.length / 2
  left = array[0..(middle - 1)]
  right = array[middle..(array.length - 1)]

  sorted_left_half, x = sort_count(left)
  sorted_right_half, y = sort_count(right)
  sorted_array, z = merge_and_count_split(sorted_left_half, sorted_right_half)

  return sorted_array, (x + y + z)
end

def merge_and_count_split(array1, array2)
  inversions = 0
  result = []
  i = 0
  j = 0

  while i < array1.length && j < array2.length do
    if array1[i] <= array2[j]
      result << array1[i]
      i += 1
    else
      result << array2[j]
      inversions += array1.length - i
      j += 1
    end
  end

  if i < array1.length
    result += array1[i..(array1.length - 1)]
  else
    result += array2[j..(array2.length - 1)]
  end

  return result, inversions
end
