# frozen_string_literal: true

require "httparty"
require "dry-struct"
require "dry-types"

require_relative "printful_sdk/configuration"
require_relative "printful_sdk/version"
require_relative "printful_sdk/requestable"
require_relative "printful_sdk/catalog"
require_relative "printful_sdk/types"
require_relative "printful_sdk/response"

Dir["#{File.dirname(__FILE__)}/printful_sdk/resource/*.rb"].each { |file| require file }

module PrintfulSdk
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration

    Catalog.include Requestable
  end
end
