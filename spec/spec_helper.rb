require "rspec"
require "rack/test"
require 'zeitwerk'
require 'json'
require "rspec-html-matchers"

loader = Zeitwerk::Loader.new
loader.push_dir("#{__dir__}/../lib/")
loader.setup

RSpec.configure do |config|
  config.include RSpecHtmlMatchers
  config.include Rack::Test::Methods
  config.before(:all) do
    load "#{__dir__}/../lib/db/seed.rb"
  end
end

module RSpecMixin
  include Rack::Test::Methods

  def app
    App
  end
end