require 'active_record'

class Food < ActiveRecord::Base
  validates :name, :quantity, :unit, presence: true
end