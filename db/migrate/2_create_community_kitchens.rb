class CreateCommunityKitchens < ActiveRecord::Migration
  def self.up
    create_table :community_kitchens do |t|
      t.string :owner, null: false
      t.datetime :created_date
      t.string :produce_id, null: false
    end

    ## include one to one association with products
  end

  def self.down
    drop_table :community_kitchens
  end
end