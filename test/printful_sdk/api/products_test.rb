# frozen_string_literal: true

require "test_helper"

class ProductsTest < Minitest::Test
  def test_list
    skip "only to Printful stores based on the Manual Order / API platform"
    VCR.use_cassette("products_list_sync_products") do
      response = PrintfulSdk::Api::Products.list_sync_products(
        status: "all"
      )
      assert_equal(200, response.code)
      response.result.each do |country|
        assert_kind_of(PrintfulSdk::Resource::Country, country)
      end
    end
  end
end
