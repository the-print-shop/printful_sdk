# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Paging < Dry::Struct
      transform_keys(&:to_sym)

      attribute :total, Types::Integer
      attribute :offset, Types::Integer
      attribute :limit, Types::Integer
    end
  end
end
