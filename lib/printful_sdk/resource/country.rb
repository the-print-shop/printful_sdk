# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Country < Dry::Struct
      transform_keys(&:to_sym)

      attribute :code, Types::String
      attribute :name, Types::String
      attribute :states, Types::Array.of(Resource::State).optional
    end
  end
end
