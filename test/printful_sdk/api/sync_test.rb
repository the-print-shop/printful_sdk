# frozen_string_literal: true

require "test_helper"

class SyncTest < Minitest::Test
  def test_list
    VCR.use_cassette("sync_products") do
      response = PrintfulSdk::Api::Sync.products(
        status: "synced"
      )
      assert_equal(200, response.code)
      response.result.each do |sync_product|
        assert_kind_of(PrintfulSdk::Resource::SyncProduct, sync_product)
      end
      assert_kind_of(PrintfulSdk::Resource::Paging, response.paging)
    end
  end

  def test_product
    VCR.use_cassette("sync_product") do
      response = PrintfulSdk::Api::Sync.product(205422259)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncProductInfo, response.result)
    end
  end

  def test_variant
    VCR.use_cassette("sync_variant") do
      response = PrintfulSdk::Api::Sync.variant(2315318572)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncVariantInfo, response.result)
    end
  end

  def test_unlink_variant
    VCR.use_cassette("sync_unlink_variant") do
      response = PrintfulSdk::Api::Sync.unlink_variant(2315318572)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncVariantInfo, response.result)
    end
  end

  def test_unlink_product
    VCR.use_cassette("sync_unlink_product") do
      response = PrintfulSdk::Api::Sync.unlink_product(205422259)
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::SyncProductInfo, response.result)
    end
  end
end
