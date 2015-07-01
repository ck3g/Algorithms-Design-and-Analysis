require 'pry'

def merge(array1, array2)
  result = []
  i = 0
  j = 0

  (array1.length + array2.length).times do |k|
    if array1[i] && array1[i] <= array2[j]
      result[k] = array1[i]
      i += 1
    else
      result[k] = array2[j]
      j += 1
    end
  end

  result
end
