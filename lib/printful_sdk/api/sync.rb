# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Sync
      def self.products(status:, search: nil, offset: 0, limit: 100)
        get(Types::Array.of(Resource::SyncProduct), "/sync/products", query: {
          status: status,
          search: search,
          offset: offset,
          limit: limit
        })
      end

      def self.product(sync_product_id)
        get(Resource::SyncProductInfo, "/sync/products/#{sync_product_id}")
      end
    end
  end
end