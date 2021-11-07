# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Store
      def self.info
        get(Resource::Store, "/store")
      end

      def self.update_packing_slip(variant_id); end
    end
  end
end
