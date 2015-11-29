require 'sinatra/activerecord'

class CommunityKitchen < ActiveRecord::Base
  # attr_accessor :owner, :created_date, :produce_id

  # def initialize args
  #   @owner = args[:owner]
  #   @created_date = Time.new
  #   @produce_id = args[:produce_id]
  # end

  validates :owner, presence: true
end
