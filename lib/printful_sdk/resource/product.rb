module PrintfulSdk
  module Resource
    class Product < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :type, Types::String
    end
  end
end
