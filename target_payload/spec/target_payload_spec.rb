require_relative '../lib/target_payload'
require 'pry'

RSpec.describe 'Target & Payload' do
  context 'no payload' do
    it 'returns empty array for no payload' do
      payload = [1]
      target = 1
    
      expect(find_target(payload, target)).to eq([])
    end

    it 'returns empty array for no payload' do
      payload = []
      target = 3
    
      expect(find_target(payload, target)).to eq([])
    end
  end
  
  context 'same number in payload' do
    it 'returns an empty array' do
      payload = [4, 4]
      target = 8
      
      expect(find_target(payload, target)).to eq([])
    end
  end

  context 'small payload' do
    it 'returns the correct payload values that equal target' do
      payload = [1, 2]
      target = 3

      expect(find_target(payload, target)).to eq(payload)
    end
    
    it 'returns an empty array when no payload values equal the target' do
      payload = [1, 3]
      target = 3
  
      expect(find_target(payload, target)).to eq([])
    end
  end

  context 'large payload' do
    it 'returns the correct payload values that equal target' do
      payload = [-1, -3, 4, 7, -5, 18, 10, -23, 5]
      target = 15
      expected = [-3, 18]

      expect(find_target(payload, target)).to eq(expected)
    end

    it 'returns a blank array when no payload values equal target' do
      payload = [-1, -2, 4, 7, -5, 18, 10, -23, 4]
      target = 15

      expect(find_target(payload, target)).to eq([])
    end
  end

  context 'negative or zero target' do
    it 'returns the correct payload values that equal negative target' do
      payload = [-1, -3, 4, 7, -5, 18, 10, -23, 5]
      target = -1
      expected = [4, -5]

      expect(find_target(payload, target)).to eq(expected)
    end

    it 'returns the correct payload values that equal zero target' do
      payload = [-1, -2, 4, 7, -5, 18, 10, 2, 4]
      target = 0
      expected = [-2, 2]

      expect(find_target(payload, target)).to eq(expected)
    end
  end
end
