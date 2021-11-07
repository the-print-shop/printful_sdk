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

  def test_update_packing_slip
    VCR.use_cassette("store_update_packing_slip") do
      response = PrintfulSdk::Api::Store.update_packing_slip(
        email: "brantest@hotmail.com",
        phone: "+1-202-555-0152",
        message: "hello world"
      )
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::PackingSlip, response.result.packing_slip)
    end
  end
end
