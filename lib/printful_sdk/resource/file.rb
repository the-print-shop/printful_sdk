# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class File < Dry::Struct
      transform_keys(&:to_sym)

      Statuses = Types::String.enum(
        "ok",
        "waiting",
        "failed",
      )

      attribute :id, Types::Integer
      attribute :type, Types::String
      attribute :hash, Types::String.optional
      attribute :url, Types::String.optional
      attribute :filename, Types::String.optional
      attribute :mime_type, Types::String.optional
      attribute :size, Types::Integer
      attribute :width, Types::Integer.optional
      attribute :height, Types::Integer.optional
      attribute :dpi, Types::Integer.optional
      attribute :status, Statuses
      attribute :created, Types::Integer
      attribute :thumbnail_url, Types::String.optional
      attribute :preview_url, Types::String.optional
      attribute :visible, Types::Bool
      attribute? :options, Types::Array do
        attribute :id, Types::String
        attribute :value, Types::Any
      end
    end
  end
end
