module PrintfulSdk
  class Catalog
    def self.products
      get "/products"
    end
  end
end
