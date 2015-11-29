class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.string :unit, null: false
    end
  end

  def self.down
    drop_table :products
  end
end