ENV['RACK_ENV'] = 'test'

require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'sqlite3'
require 'active_record'
require './config/environment'

module WithRollBack
  def  temporarily(&block)
    ActiveRecord::Base.connection.transaction do
      block.call
      raise ActiveRecord::Rollback
    end
  end
end