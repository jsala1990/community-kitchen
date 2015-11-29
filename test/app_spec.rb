require './app'
require './test/spec_helper'
require 'rack/test'

include Rack::Test::Methods
describe 'App' do
  def app
    Sinatra::Application
  end

  describe '#get' do
    it 'validates existance of api' do
      get '/community-kitchen'
      assert last_response.ok?
    end

    it 'return all community items' do
      skip('not done yet')
      ["orange", "banana", "grapefruit"].each do |food|
        Produce.new name: food, quantity: 1, unit: 'lbs'
      end
      get '/community-kitchen'
      last_response.body.count.must_equal 3
    end
  end
end