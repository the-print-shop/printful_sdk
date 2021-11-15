# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Products
      def self.sync_products(query = {})
        get(
          Types::Array.of(Resource::SyncProduct),
          "/store/products",
          query: query.slice(:offset, :limit)
        )
      end

      def self.create_sync_product(payload)
        post(
          Resource::SyncProduct,
          "/store/products",
          body: payload.to_json
        )
      end

      def self.sync_product(sync_product_id)
        get(
          Resource::SyncProductInfo,
          "/store/products/#{sync_product_id}"
        )
      end

      def self.update_sync_product(sync_product_id, payload)
        put(
          Resource::SyncProduct,
          "/store/products/#{sync_product_id}",
          body: payload.to_json
        )
      end

      def self.sync_variant(sync_variant_id)
        get(
          Resource::SyncVariant,
          "/store/variants/#{sync_variant_id}"
        )
      end

      def self.update_sync_variant(sync_variant_id, payload)
        put(
          Resource::SyncVariant,
          "/store/variants/#{sync_variant_id}",
          body: payload.to_json
        )
      end

      def self.create_sync_variant(sync_product_id, payload)
        post(
          Resource::SyncVariant,
          "/store/products/#{sync_product_id}/variants",
          body: payload.to_json
        )
      end

      def self.delete_sync_product(sync_product_id)
        delete(
          Types::Array,
          "/store/products/#{sync_product_id}"
        )
      end

      def self.delete_sync_variant(sync_variant_id)
        delete(
          Types::Array,
          "/store/variants/#{sync_variant_id}"
        )
      end
    end
  end
end
