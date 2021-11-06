module PrintfulSdk
  module Resource
    class Store < Dry::Struct
      transform_keys(&:to_sym)

      attribute :id, Types::Integer
      attribute :type, Types::String
      attribute :name, Types::String
      attribute :website, Types::String
      attribute :return_address, Resource::Address.optional
      attribute :billing_address, Resource::Address.optional
      attribute :currency, Types::String
      attribute :payment_card, Resource::Card.optional
      attribute :packing_slip, Resource::PackingSlip.optional
      attribute :created, Types::Integer
    end
  end
end
