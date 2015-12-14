require './lib/models/foods'
require './test/spec_helper'

describe Food do
  describe '#validations' do
    it 'checks for presence of all required attributes' do
      orange = Food.create name: 'orange', quantity: 3, unit: 'lbs'
      assert_equal 'orange', orange.name
      assert_equal 3, orange.quantity
      assert_equal 'lbs', orange.unit
    end
  end
end
