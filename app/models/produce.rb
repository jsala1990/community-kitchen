require 'sinatra/activerecord'

class Produce < ActiveRecord::Base
  self.table_name = 'products'
  validates :name, :quantity, :unit, presence: true
end