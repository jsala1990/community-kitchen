require './lib/produce'

describe Produce do
  it 'creates a carrot' do
    produce = Produce.new
    expect(produce).to be_defined
  end
end
