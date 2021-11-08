# frozen_string_literal: true

require "test_helper"

class ErrorTest < Minitest::Test
  def test_error
    VCR.use_cassette("sync_variant_error") do
      response = PrintfulSdk::Api::Sync.variant(10261)
      refute_equal(200, response.code)
      assert(response.error)
    end
  end
end
