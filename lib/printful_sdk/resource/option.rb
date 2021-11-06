module PrintfulSdk
  module Resource
    class Option < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::String
      attribute :type, Types::String
      attribute :title, Types::String.optional
      attribute :additional_price, Types::String.optional
    end
  end
end
