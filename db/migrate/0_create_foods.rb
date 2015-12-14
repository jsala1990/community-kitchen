class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :name
      t.integer :quantity
      t.string :unit
    end
  end
end