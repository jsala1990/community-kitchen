require './lib/produce'

describe Produce do
  describe '#initialize' do
    it 'creates a carrot' do
      produce = Produce.new name: 'carrot'
      expect(produce.name).to eq 'carrot'
    end

    it 'creates 3 carrots' do
      produce = Produce.new name: 'carrot', quantity: 3
      expect(produce.quantity).to eq 3
    end
  end
end
