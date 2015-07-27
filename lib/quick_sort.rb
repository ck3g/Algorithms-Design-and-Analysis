class QuickSort
  def self.partition(array, left, right)
    pivot = array[left]
    i = left + 1

    (left + 1..right).each do |j|
      if array[j] < pivot
        swap array, i, j
        i += 1
      end
    end

    swap array, left, i - 1

    i - 1
  end

  private

  def self.swap(array, i, j)
    tmp = array[i]
    array[i] = array[j]
    array[j] = tmp
  end
end
