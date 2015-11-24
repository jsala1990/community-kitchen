require 'rake'
require 'rspec/core/rake_task'
require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    require './config/environment'
  end
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = Dir.glob('spec/**/*_spec.rb')
end

task :rubocop do
  sh 'bundle exec rubocop -l'
end

task default: :spec
