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
      attribute :hash, Types::String
      attribute :url, Types::String.optional
      attribute :filename, Types::String
      attribute :mime_type, Types::String
      attribute :size, Types::Integer
      attribute :width, Types::Integer
      attribute :height, Types::Integer
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
