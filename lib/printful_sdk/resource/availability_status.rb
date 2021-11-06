module PrintfulSdk
  module Resource
    class AvailabilityStatus < Dry::Struct
      transform_keys(&:to_sym)

      Statuses = Types::String.enum(
        'in_stock',
        'stocked_on_demand',
        'discontinued',
        'out_of_stock'
      )

      attribute :region, Types::String
      attribute :status, Statuses
    end
  end
end
