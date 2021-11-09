# frozen_string_literal: true

module PrintfulSdk
  module Requestable
    def self.included(mod)
      mod.include(HTTParty) unless mod.include?(HTTParty)
      mod.base_uri(PrintfulSdk.configuration.endpoint)
      mod.headers("Authorization" => "Basic #{PrintfulSdk.configuration.api_key}")
      mod.headers("Content-Type" => "application/json")
      mod.extend(ClassMethods)
    end

    module ClassMethods
      [:get, :post, :delete, :put].each do |action|
        define_method(action) do |*args, &block|
          result_type = args.shift
          body = super(*args, &block).parsed_response
          if body["code"] == 200
            Response.with(result_type).new(body)
          else
            ErrorResponse.new(body)
          end
        end
      end
    end
  end
end
