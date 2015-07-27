require 'quick_sort'

RSpec.describe QuickSort do
  describe '#partition' do
    it "partitioning the initial array" do
      initial = [3, 8, 2, 5, 1, 4, 7, 6]
      expected = [1, 2, 3, 5, 8, 4, 7, 6]
      expect(QuickSort.partition(initial, 0, 7)).to eq 2
    end
  end
end
