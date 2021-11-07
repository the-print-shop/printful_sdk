# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class SyncProductInfo < Dry::Struct
      transform_keys(&:to_sym)

      attribute :sync_product, Resource::SyncProduct
      attribute :sync_variants, Types::Array.of(Resource::SyncVariant)
      attribute? :options, Types::Array do
        attribute :id, Types::String
        attribute :value, Types::Any
      end
    end
  end
end
