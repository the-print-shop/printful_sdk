# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class SyncProduct < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :external_id, Types::String.optional
      attribute :name, Types::String
      attribute :variants, Types::Integer
      attribute :synced, Types::Integer
      attribute :thumbnail_url, Types::String
      attribute :is_ignored, Types::Bool
    end
  end
end
