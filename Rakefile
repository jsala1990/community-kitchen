require 'active_record'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'rake/testtask'

task :rubocop do
  sh 'bundle exec rubocop -l'
end

namespace :db do
  task :load_config do
    require './app'
  end
end

Rake::TestTask.new do |t|
  ENV['RACK_ENV'] = 'test'
  t.pattern = 'test/**/*_spec.rb'
end

task :test => ["db:migrate", "db:test:prepare"]