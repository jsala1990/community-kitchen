require './config/environments'
require 'sinatra'
require './app/models/produce'

get '/community-kitchen' do
  content_type :json
  Produce.all
end
