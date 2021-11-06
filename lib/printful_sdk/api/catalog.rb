module PrintfulSdk
  module Api
    class Catalog
      def self.products
        get Types::Array.of(Resource::Product), "/products"
      end
  
      def self.variant(variant_id)
        get Resource::VariantInfo, "/products/variant/#{variant_id}"
      end
  
      def self.product(product_id)
        get Resource::ProductInfo, "/products/#{product_id}"
      end
    end
  end
end
