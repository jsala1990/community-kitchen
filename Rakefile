require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = Dir.glob('spec/**/*_spec.rb')
end

task default: :spec