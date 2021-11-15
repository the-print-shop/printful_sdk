# frozen_string_literal: true

require "test_helper"

class ProductsTest < Minitest::Test
  def test_sync_products
    VCR.use_cassette("products_sync_products") do
      response = PrintfulSdk::Api::Products.sync_products
      assert_equal(200, response.code)
      response.result.each do |product|
        assert_kind_of(PrintfulSdk::Resource::SyncProduct, product)
      end
    end
  end

  def test_create_sync_product
    VCR.use_cassette("products_create_sync_products") do
      response = PrintfulSdk::Api::Products.create_sync_product(
        sync_product: {
          external_id: "4235234213",
          name: "T-shirt",
          thumbnail: "http://your-domain.com/path/to/thumbnail.png",
          is_ignored: true
        },
        sync_variants: [
          {
            external_id: "12312414",
            variant_id: 1,
            retail_price: 29.99,
            is_ignored: true,
            sku: "SKU1234",
            files: [
              {
                type: "default",
                url: "https://i.pinimg.com/originals/eb/9e/3b/eb9e3b7dab09358e7cf13f188f64f9f4.png",
                options: [],
                filename: "shirt1.png",
                visible: true
              }
            ],
            options: []
          }
        ]
      )
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncProduct, response.result)
    end
  end

  def test_sync_product
    VCR.use_cassette("products_sync_product") do
      response = PrintfulSdk::Api::Products.sync_product(254727851)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncProductInfo, response.result)
    end
  end

  def test_update_sync_product
    VCR.use_cassette("products_update_sync_product") do
      response = PrintfulSdk::Api::Products.update_sync_product(254727851, {
        sync_product: {
          name: "T-shirt-updated",
        },
      })
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncProduct, response.result)
    end
  end

  def test_sync_variant
    VCR.use_cassette("products_sync_variant") do
      response = PrintfulSdk::Api::Products.sync_variant(2965869092)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncVariant, response.result)
    end
  end

  def test_update_sync_variant
    VCR.use_cassette("products_update_sync_variant") do
      response = PrintfulSdk::Api::Products.update_sync_variant(2965869092, {
        sku: "SK123"
      })
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncVariant, response.result)
    end
  end

  def test_create_sync_variant
    VCR.use_cassette("products_create_sync_variant") do
      response = PrintfulSdk::Api::Products.create_sync_variant(254727851, {
        external_id: "12343205",
        variant_id: 1,
        retail_price: 29.99,
        is_ignored: true,
        sku: "SKU1234",
        files: [
          {
            type: "default",
            url: "http://your-domain.com/path/to/thumbnail.png",
            options: [],
            filename: "shirt1.png",
            visible: true
          }
        ],
      })
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncVariant, response.result)
    end
  end 
end
