# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Store
      def self.info
        get(Resource::Store, "/store")
      end

      def self.update_packing_slip(email:, phone:, message:)
        post(
          Utils.wrap(Resource::PackingSlip),
          "/store/packing-slip",
          body: {
            email: email,
            phone: phone,
            message: message
          }.to_json
        )
      end
    end
  end
end
