module PrintfulSdk
  module Resource
    class VariantInfo < Dry::Struct
      transform_keys(&:to_sym)

      attribute :variant, Resource::Variant
      attribute :product, Resource::Product
    end
  end
end
