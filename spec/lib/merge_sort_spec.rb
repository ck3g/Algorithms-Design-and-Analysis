require 'merge_sort'

describe 'merge' do
  it 'merges two sorted arrays' do
    expect(merge([1, 3, 4], [2, 5, 6])).to eq [1, 2, 3, 4, 5, 6]
  end
end
