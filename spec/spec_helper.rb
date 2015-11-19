require 'rspec'
require './person'
require './family-member'
require './address-book'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
