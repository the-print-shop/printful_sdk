# frozen_string_literal: true

require "httparty"

require_relative "printful_sdk/configuration"
require_relative "printful_sdk/version"
require_relative "printful_sdk/requestable"
require_relative "printful_sdk/catalog"

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
