# frozen_string_literal: true

require "httparty"
require "dry-struct"
require "dry-types"

require_relative "printful_sdk/configuration"
require_relative "printful_sdk/version"
require_relative "printful_sdk/requestable"
require_relative "printful_sdk/types"
require_relative "printful_sdk/response"

require_relative "printful_sdk/resource/file"
require_relative "printful_sdk/resource/option"
require_relative "printful_sdk/resource/availability_status"
require_relative "printful_sdk/resource/address"
require_relative "printful_sdk/resource/card"
require_relative "printful_sdk/resource/packing_slip"
require_relative "printful_sdk/resource/store"
require_relative "printful_sdk/resource/product"
require_relative "printful_sdk/resource/variant"
require_relative "printful_sdk/resource/product_info"
require_relative "printful_sdk/resource/variant_info"

require_relative "printful_sdk/api/catalog"
require_relative "printful_sdk/api/store"

module PrintfulSdk
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration

    Api::Catalog.include Requestable
    Api::Store.include Requestable
  end
end
