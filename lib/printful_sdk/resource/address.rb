module PrintfulSdk
  module Resource
    class Address < Dry::Struct
      transform_keys(&:to_sym)

      attribute :name, Types::String
      attribute :city, Types::String
      attribute :state_code, Types::String
      attribute :state_name, Types::String
      attribute :country_code, Types::String
      attribute :country_name, Types::String
      attribute :zip, Types::String
      attribute :address1, Types::String
      attribute :company, Types::String.optional
      attribute :address2, Types::String.optional
      attribute :phone, Types::String.optional
      attribute :email, Types::String.optional
    end
  end
end
