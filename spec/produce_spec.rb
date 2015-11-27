require './lib/produce'

describe Produce do
  describe '#initialize' do
    it 'creates a carrot' do
      produce = Produce.new name: 'carrot'
      expect(produce.name).to eq 'carrot'
    end

    it 'creates 3 carrots' do
      produce = Produce.new name: 'carrot', quantity: 3
      expect(produce.name).to eq 'carrot'
      expect(produce.quantity).to eq 3
    end

    it 'creates 3 lbs of carrots' do
      produce = Produce.new name: 'carrot', quantity: 3, unit: 'lbs'
      expect(produce.name).to eq 'carrot'
      expect(produce.quantity).to eq 3
      expect(produce.unit).to eq 'lbs'
    end
  end
end
