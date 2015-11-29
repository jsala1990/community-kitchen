require './app'
require './test/spec_helper'
require 'rack/test'

include Rack::Test::Methods
describe 'App' do
  def app
    Sinatra::Application
  end

  it 'should do something' do
    get '/'
    last_response.body.must_equal 'Hello World'
  end

end