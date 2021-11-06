module PrintfulSdk
  module Resource
    class Variant < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :product_id, Types::Integer
      attribute :name, Types::String
      attribute :size, Types::String.optional
      attribute :color, Types::String.optional
      attribute :color_code, Types::String.optional
      attribute :color_code2, Types::String.optional
      attribute :image, Types::String.optional
      attribute :price, Types::String
      attribute :in_stock, Types::Bool
      attribute :availability_regions, Types::Hash.map(Types::String, Types::String)
      attribute :availability_status, Types::Array.of(Resource::AvailabilityStatus)
    end
  end
end
