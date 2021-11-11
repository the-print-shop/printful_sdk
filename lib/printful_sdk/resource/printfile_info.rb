# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class PrintfileInfo < Dry::Struct
      transform_keys(&:to_sym)

      attribute :product_id, Types::Integer
      attribute :available_placements, Types::Hash.map(Types::String, Types::String)
      attribute :printfiles, Types::Array.of(Resource::Printfile)
      attribute :variant_printfiles, Types::Array.of(Resource::VariantPrintfile)
      attribute :option_groups, Types::Array.of(Types::String)
      attribute :options, Types::Array.of(Types::String)
    end
  end
end
