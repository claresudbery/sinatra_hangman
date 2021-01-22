# frozen_string_literal: true
require 'zeitwerk'

loader = Zeitwerk::Loader.new
loader.push_dir("#{__dir__}/lib/")
loader.setup
load "#{__dir__}/lib/db/seed.rb"

run App.new