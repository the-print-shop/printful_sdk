module PrintfulSdk
  module Resource
    class Card < Dry::Struct
      transform_keys(&:to_sym)

      attribute :type, Types::String
      attribute :number_mask, Types::String
      attribute :expires, Types::String
    end
  end
end
