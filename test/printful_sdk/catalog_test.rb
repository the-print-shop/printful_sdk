# frozen_string_literal: true

require "test_helper"

class CatalogTest < Minitest::Test
  def test_products
    VCR.use_cassette("catalog_products") do
      response = PrintfulSdk::Catalog.products
      assert response
    end
  end
end
