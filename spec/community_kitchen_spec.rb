require './lib/community_kitchen'

describe CommunityKitchen do
  describe '#initialize' do
    it 'creates a community kitchen Sally' do
      community_kitchen = CommunityKitchen.new owner: 'Sally'
      expect(community_kitchen.owner).to eq 'Sally'
    end

    it 'places created date' do
      community_kitchen = CommunityKitchen.new owner: 'Sally'
      expect(community_kitchen.created_date).to be_instance_of Time
    end

    it 'creates a community kitchen item with produce name' do
      community_kitchen = CommunityKitchen. new produce_id: 1
      expect(community_kitchen.produce_id).to be 1
    end
  end
end