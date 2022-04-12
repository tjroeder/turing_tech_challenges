require_relative '../lib/millions_of_numbers'

RSpec.describe 'Millions of Numbers' do
  context 'three small arrays' do
    it 'returns the match' do
      arr1 = [1, 2]
      arr2 = [0, 1]
      arr3 = [0, 1]
      
      expect(find_matches(arr1, arr2, arr3)).to eq([1])
    end
    
    it 'returns the matches' do
      arr1 = [1, 2, 3]
      arr2 = [0, 1, 3]
      arr3 = [0, 1, 3]
      
      expect(find_matches(arr1, arr2, arr3)).to eq([1, 3])
    end
    
    it 'returns no matches if there are none' do
      arr1 = [1, 2, 4]
      arr2 = [0, 2, 3]
      arr3 = [0, 1, 3]
      
      expect(find_matches(arr1, arr2, arr3)).to eq([])
    end
  end

  context 'three larger arrays' do
    it 'returns the matches' do
      arr1 = [1, 2, 4, 5, 8]
      arr2 = [2, 3, 5, 7, 9]
      arr3 = [1, 2, 5, 8, 9]

      expect(find_matches(arr1, arr2, arr3)).to eq([2, 5])
    end

    it 'returns no matches if there are none matches' do
      arr1 = [1, 2, 4, 6, 8]
      arr2 = [2, 3, 5, 7, 9]
      arr3 = [1, 3, 5, 8, 9]

      expect(find_matches(arr1, arr2, arr3)).to eq([])
    end
  end
end