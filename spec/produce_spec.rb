require './lib/produce'

describe Produce do
  it 'creates a carrot' do
    produce = Produce.new name: 'carrot'
    expect(produce.name).to 'carrot'
  end
end
