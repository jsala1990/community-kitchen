begin
  require 'rake/testtask'
rescue LoadError => e
  puts 'Failed to load dependency', e
  exit
end

task :rubocop do
  sh 'bundle exec rubocop -l'
end

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_spec.rb'
end

namespace :db do
  desc 'migrate your database'
  task :migrate do
    require 'bundler'
    Bundler.require
    require './config/environment'
    ActiveRecord::Migrator.migrate('db/migrate')
  end
end

task :test => ['db:migrate']
task default: :test