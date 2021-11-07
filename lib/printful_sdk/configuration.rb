# frozen_string_literal: true

module PrintfulSdk
  class Configuration
    attr_accessor :api_key, :endpoint

    def initialize
      @endpoint = "https://api.printful.com"
    end
  end
end
