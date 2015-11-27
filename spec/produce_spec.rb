require './lib/produce'

describe Produce do
  stub_model(Produce)
  it 'creates a carrot' do
    produce = Produce.new name: 'carrot'
    expect(produce.name).to 'carrot'
  end
end
