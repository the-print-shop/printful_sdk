# frozen_string_literal: true

module PrintfulSdk
  module Resource
    class GenerationTask < Dry::Struct
      transform_keys(&:to_sym)

      Statuses = Types::String.enum(
        "pending",
        "completed",
        "failed",
      )

      attribute :task_key, Types::String
      attribute :status, Statuses
      attribute? :error, Types::String
      attribute? :mockups, Types::Array.of(Resource::Mockup)
    end
  end
end
