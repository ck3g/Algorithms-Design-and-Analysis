require 'counting_inversions'

RSpec.describe 'Counting Inversions' do
  it 'calculates inversions' do
    expect(count_inversions([1, 3, 5, 2, 4, 6])).to eq 3
  end
end
