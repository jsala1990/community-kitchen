require './app/models/produce'
require './test/spec_helper'

describe Produce do
  describe '#validations' do
    it 'checks for presence of all required attributes' do
      produce = Produce.new
      produce.valid?
      [:name, :quantity, :unit].each do |attr|
        assert(produce.errors.messages.has_key?(attr),
          failure_message = "it does not validate for presense of #{attr}")
      end

    end
  end
end
