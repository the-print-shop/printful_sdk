# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Product < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :type, Types::String
      attribute :type_name, Types::String
      attribute :brand, Types::String.optional
      attribute :description, Types::String.optional
      attribute :model, Types::String.optional
      attribute :image, Types::String.optional
      attribute :variant_count, Types::Integer
      attribute :currency, Types::String
      attribute :files, Types::Array.of(Resource::File)
      attribute :options, Types::Array.of(Resource::Option)
      attribute :dimensions, Types::Hash.optional
      attribute :is_discontinued, Types::Bool
      attribute :avg_fulfillment_time, Types::Float.optional
    end
  end
end
