# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Sync
      def self.products(status:, search: nil, offset: 0, limit: 100)
        get(Types::Array.of(Resource::SyncProduct), "/sync/products", query: {
          status: status,
          search: search,
          offset: offset,
          limit: limit,
        })
      end

      def self.product(sync_product_id)
        get(Resource::SyncProductInfo, "/sync/products/#{sync_product_id}")
      end

      def self.unlink_product(sync_product_id)
        delete(Resource::SyncProductInfo, "/sync/products/#{sync_product_id}")
      end

      def self.variant(sync_variant_id)
        get(Resource::SyncVariantInfo, "/sync/variant/#{sync_variant_id}")
      end

      def self.unlink_variant(sync_variant_id)
        delete(Resource::SyncVariantInfo, "/sync/variant/#{sync_variant_id}")
      end

      def self.update_variant(sync_variant_id, sync_variant)
        put(
          Resource::SyncVariantInfo,
          "/sync/variant/#{sync_variant_id}",
          body: sync_variant.to_json
        )
      end
    end
  end
end
