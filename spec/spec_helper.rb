#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
#$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rspec'
require 'peaches'
require 'rubygems'
require 'spork'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Spork.prefork do

end

Spork.each_run do
  RSpec.configure do |config|
    
  end
end





