# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))
require "printful_sdk"

require "dotenv/load"
require "minitest/autorun"
require "pry-byebug"
require "vcr"
require "webmock"

VCR.configure do |config|
  config.cassette_library_dir = "test/cassettes"
  config.hook_into(:webmock)
  config.filter_sensitive_data("<API_KEY>") { ENV["API_KEY"] }
  config.before_record do |i|
    i.response.body.force_encoding("UTF-8")
  end
end

PrintfulSdk.configure do |config|
  config.api_key = ENV["API_KEY"] || "TEST_API_KEY"
end
