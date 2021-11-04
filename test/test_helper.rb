# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "printful_sdk"

require "dotenv/load"
require "minitest/autorun"
require "pry-byebug"

PrintfulSdk.configure do |config|
  config.api_key = ENV["API_KEY"]
end
