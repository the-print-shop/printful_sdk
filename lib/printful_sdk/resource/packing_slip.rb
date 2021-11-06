module PrintfulSdk
  module Resource
    class PackingSlip < Dry::Struct
      transform_keys(&:to_sym)

      attribute :email, Types::String.optional
      attribute :phone, Types::String.optional
      attribute :message, Types::String.optional
    end
  end
end
