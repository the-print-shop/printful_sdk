# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class ProductVariant < Dry::Struct
      transform_keys(&:to_sym)

      attribute :variant_id, Types::Integer
      attribute :product_id, Types::Integer
      attribute :image, Types::String
      attribute :name, Types::String
    end
  end
end
