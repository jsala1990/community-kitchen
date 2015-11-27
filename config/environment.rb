require './lib/db_config'

environment = ENV.fetch('RACK_ENV') { 'test' }
config = DBConfig.new(environment)
ActiveRecord::Base.establish_connection(config.options)
