require_relative '../lib/robot'

RSpec.describe 'Robot' do
  context 'stays put in one place' do
    it 'only does left turns' do
      string = 'LLL'

      expect(return_origin(string)).to eq(true)
    end
    
    it 'only does right turns' do
      string = 'RRR'

      expect(return_origin(string)).to eq(true)
    end
    
    it 'only does left and right turns' do
      string = 'RLR'
      
      expect(return_origin(string)).to eq(true)
    end
  end
  
  context 'least actions to go to same spot' do
    it 'returns to the same spot' do
      string = 'GLLG'

      expect(return_origin(string)).to eq(true)
    end

    it 'does not return to the same spot' do
      string = 'GLRG'

      expect(return_origin(string)).to eq(false)
    end
  end
  
  context 'large amount of actions' do
    it 'returns to the same spot' do
      string = 'GRGRGRG'
      
      expect(return_origin(string)).to eq(true)
    end

    it 'does not return to the same spot' do
      string = 'GRGLGLG'
      
      expect(return_origin(string)).to eq(false)
    end
  end
end