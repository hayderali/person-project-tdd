require 'rspec'
require './main'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
