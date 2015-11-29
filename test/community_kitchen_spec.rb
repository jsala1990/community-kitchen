require './lib/community_kitchen'
require './test/spec_helper'

describe CommunityKitchen do
  describe '#validations' do
    it 'checks for all required attributes' do
      community_kitchen = CommunityKitchen.new
      community_kitchen.valid?
    end
  end
end