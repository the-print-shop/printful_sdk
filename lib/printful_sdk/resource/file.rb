# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class File < Dry::Struct
      transform_keys(&:to_sym)

      attribute :type, Types::String
      attribute :title, Types::String.optional
      attribute :additional_price, Types::String.optional
    end
  end
end
