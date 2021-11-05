module PrintfulSdk
  module Requestable
    def self.included(mod)
      mod.include(HTTParty) unless mod.include?(HTTParty)
      mod.base_uri PrintfulSdk.configuration.endpoint
      mod.headers "Authorization" => "Basic #{PrintfulSdk.configuration.api_key}"
      mod.extend(ClassMethods)
    end

    module ClassMethods
      def get(*args, &block)
        result_type = args.shift
        body = super(*args, &block).parsed_response
        Response.with(result_type).new(body)
      end
    end
  end
end
