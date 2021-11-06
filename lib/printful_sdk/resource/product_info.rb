module PrintfulSdk
  module Resource
    class ProductInfo < Dry::Struct
      transform_keys(&:to_sym)

      attribute :product, Resource::Product
      attribute :variants, Types::Array.of(Resource::Variant)
    end
  end
end