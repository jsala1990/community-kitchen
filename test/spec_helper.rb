require 'minitest/autorun'
require 'minitest'
require 'factory_girl'

class Minitest::Spec
  include FactoryGirl::Syntax::Methods
end