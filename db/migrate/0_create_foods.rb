class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :name
    end
  end
end