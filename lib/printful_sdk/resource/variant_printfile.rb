# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class VariantPrintfile < Dry::Struct
      transform_keys(&:to_sym)

      attribute :variant_id, Types::Integer
      attribute :placements, Types::Hash.map(Types::String, Types::Integer)
    end
  end
end
