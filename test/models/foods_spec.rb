require './lib/models/foods'
require './test/spec_helper'

describe Food do
  describe '#validations' do
    it 'checks for presence of all required attributes' do
      orange = Food.new name: 'orange'
      assert_equal 'orange', orange.name
    end
  end
end
