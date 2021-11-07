# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Country
      def self.list
        get(Types::Array.of(Resource::Country), "/countries")
      end
    end
  end
end
