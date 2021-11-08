# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class SyncVariantInfo < Dry::Struct
      transform_keys(&:to_sym)

      attribute :sync_product, Resource::SyncProduct
      attribute :sync_variant, Resource::SyncVariant
    end
  end
end
