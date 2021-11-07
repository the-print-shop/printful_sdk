# frozen_string_literal: true

require "test_helper"

class StoreTest < Minitest::Test
  def test_info
    VCR.use_cassette("store_info") do
      response = PrintfulSdk::Api::Store.info
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::Store, response.result)
    end
  end
end
