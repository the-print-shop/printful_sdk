module PrintfulSdk
  class Catalog
    def self.products
      get Types::Array.of(Resource::Product), "/products"
    end
  end
end
