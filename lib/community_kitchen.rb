class CommunityKitchen

  attr_accessor :owner, :created_date, :produce_id

  def initialize args
    @owner = args[:owner]
    @created_date = Time.new
    @produce_id = args[:produce_id]
  end
end
