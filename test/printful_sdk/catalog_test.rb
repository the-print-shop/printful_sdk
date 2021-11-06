# frozen_string_literal: true

require "test_helper"

class CatalogTest < Minitest::Test
  def test_products
    VCR.use_cassette("catalog_products") do
      response = PrintfulSdk::Catalog.products
      assert_equal 200, response.code
      response.result.each do |product|
        assert_kind_of PrintfulSdk::Resource::Product, product
      end
    end
  end

  def test_variant
    # VCR.use_cassette("catalog_products") do
    #   response = PrintfulSdk::Catalog.variant()
    #   assert_equal 200, response.code
    #   response.result.each do |product|
    #     assert_kind_of PrintfulSdk::Resource::Product, product
    #   end
    # end
  end

  def test_product
    VCR.use_cassette("catalog_product") do
      response = PrintfulSdk::Catalog.product(1)
      binding.pry
      assert_equal 200, response.code
      assert_kind_of PrintfulSdk::Resource::Product, response.result.product
      response.result.variants.each do |variant|
        assert_kind_of PrintfulSdk::Resource::Variant, variant
      end
    end
  end
end
