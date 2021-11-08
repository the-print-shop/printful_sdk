# frozen_string_literal: true

module PrintfulSdk
  class ErrorResponse < Dry::Struct
    transform_keys(&:to_sym)

    attribute :code, Types::Integer
    attribute :result, Types::String
    attribute :error do
      attribute :reason, Types::String
      attribute :message, Types::String
    end
  end
end
