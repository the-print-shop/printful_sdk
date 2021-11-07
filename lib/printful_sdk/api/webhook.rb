# frozen_string_literal: true

module PrintfulSdk
  module Api
    class Webhook
      def self.info
        get(Resource::Webhook, "/webhooks")
      end

      def self.setup(url:, types:, params:)
        post(Resource::Webhook, "/webhooks", body: {
          url: url,
          types: types,
          params: params,
        }.to_json)
      end

      def self.disable
        delete(Resource::Webhook, "/webhooks")
      end
    end
  end
end
