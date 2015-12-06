class CreateFood < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.string :unit, null: false
    end
  end

  def self.down
    drop_table :foods
  end
end