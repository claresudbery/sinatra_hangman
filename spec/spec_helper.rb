require './app'
require "rspec"
require "rack/test"

RSpec.configure do |config|
    config.include Rack::Test::Methods
  end

  module RSpecMixin
    include Rack::Test::Methods
  
    def app
      App
    end
  end