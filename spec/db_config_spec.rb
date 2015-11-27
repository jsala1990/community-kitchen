require './spec/spec_helper'

describe DBConfig do
  it 'uses a default file for any env' do
    file = './config/database.yml'
    expect(file).to eq(DBConfig.new('any_env').file)
  end

  it 'grabs the options file for the test env' do
    options = {
      'adapter' => 'sqlite3',
      'database' => 'db/community_kitchen'
    }
    expect(options).to eq(DBConfig.new('test').options)
  end
end
