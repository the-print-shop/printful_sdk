# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Mockup < Dry::Struct
      transform_keys(&:to_sym)

      attribute :placement, Types::String
      attribute :variant_ids, Types::Array.of(Types::Integer)
      attribute :mockup_url, Types::String
    end
  end
end
