# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class Printfile < Dry::Struct
      transform_keys(&:to_sym)

      Mode = Types::String.enum(
        "fit",
        "cover",
      )

      attribute :printfile_id, Types::Integer
      attribute :width, Types::Integer
      attribute :height, Types::Integer
      attribute :dpi, Types::Integer
      attribute :fill_mode, Mode
      attribute :can_rotate, Types::Bool
    end
  end
end
