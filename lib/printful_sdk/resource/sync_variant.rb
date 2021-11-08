# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class SyncVariant < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :external_id, Types::String
      attribute :sync_product_id, Types::Integer
      attribute :name, Types::String
      attribute :synced, Types::Bool
      attribute :variant_id, Types::Integer.optional
      attribute :warehouse_product_variant_id, Types::Integer.optional
      attribute :retail_price, Types::Coercible::Float
      attribute :sku, Types::String
      attribute :currency, Types::String
      attribute :is_ignored, Types::Bool
      attribute :product, Resource::ProductVariant.optional
      attribute :files, Types::Array.of(Resource::File)
      attribute :options, Types::Array do
        attribute :id, Types::String
        attribute :value, Types::Any
      end
    end
  end
end
