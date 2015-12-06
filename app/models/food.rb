require 'sinatra/activerecord'

class food < ActiveRecord::Base
  validates :name, :quantity, :unit, presence: true
end