require './app'
require 'spec_helper'
describe 'App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should do something' do
    get '/'
    expect(last_response.body).to eq('Hello World')
  end


end