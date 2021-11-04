module PrintfulSdk
  module Requestable
    def self.included(mod)
      mod.include(HTTParty) unless mod.include?(HTTParty)
      mod.base_uri PrintfulSdk.configuration.endpoint
      mod.headers "Authorization" => "Basic #{PrintfulSdk.configuration.api_key}"
    end
  end
end
