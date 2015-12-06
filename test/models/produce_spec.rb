require './app/models/produce'
require './test/spec_helper'

describe Food do
  describe '#validations' do
    it 'checks for presence of all required attributes' do
      food = Food.new
      food.valid?
      [:name, :quantity, :unit].each do |attr|
        assert(food.errors.messages.has_key?(attr),
          failure_message = "it does not validate for presense of #{attr}")
      end

    end
  end

  describe '#queries' do
    Food.new(name: 'something', quantity: '3', unit: 'lbs').save!
    it 'uses the #all method correctly' do
      assert Food.all.count, 1
    end
  end
end
