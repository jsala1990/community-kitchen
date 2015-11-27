require 'yaml/store'

class DBConfig

  attr_reader :file, :environment
  def initialize(environment, file='./config/database.yml')
    @environment = environment
    @file = file
  end

  def options
    read_only = true
    result = store.transaction(read_only) do
      store[@environment]
    end
    unless result
      error = "No environment '#{@environment}' configured in #{@file}"
      puts error
      raise UnconfiguredEnvironment.new(error)
    end
    result
  end

  private
  def store
    @store ||= YAML::Store.new(@file)
  end
end