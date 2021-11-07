# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Products
      def self.list_sync_products(status:, search: nil, offset: 0, limit: 100)
        get(Types::Array.of(Resource::Country), "/store/products")
      end
    end
  end
end
