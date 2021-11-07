# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Webhook < Dry::Struct
      transform_keys(&:to_sym)

      attribute :url, Types::String.optional
      attribute :types, Types::Array.of(Types::String)
      attribute :params, Types::Array.of(Types::Hash)
    end
  end
end