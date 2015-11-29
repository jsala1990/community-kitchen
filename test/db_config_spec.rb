require './test/spec_helper'

describe DBConfig do
  it 'uses a default file for any env' do
    file = './config/database.yml'
    DBConfig.new('any_env').file.must_equal file
  end

  it 'grabs the options file for the test env' do
    options = {
      'adapter' => 'sqlite3',
      'database' => 'db/footest.sqlite3'
    }
    DBConfig.new('test').options.must_equal options
  end

  it 'must raise an error when environment not available' do
    lambda{ DBConfig.new('some_random_environment').options }.must_raise DBConfig::UnconfiguredEnvironment
  end
end
