# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class State < Dry::Struct
      transform_keys(&:to_sym)

      attribute :code, Types::String
      attribute :name, Types::String
    end
  end
end
