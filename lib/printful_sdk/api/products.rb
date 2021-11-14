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
    end
  end
end