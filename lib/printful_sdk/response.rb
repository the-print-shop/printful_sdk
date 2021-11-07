# frozen_string_literal: true

module PrintfulSdk
  class Response < Dry::Struct
    transform_keys(&:to_sym)

    attribute :code, Types::Integer

    def self.with(result_type)
      Class.new(self).tap do |klass|
        klass.attribute(:result, result_type)
      end
    end
  end
end
