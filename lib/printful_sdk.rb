# frozen_string_literal: true

require "httparty"

require_relative "printful_sdk/configuration"
require_relative "printful_sdk/version"
require_relative "printful_sdk/requestable"

module PrintfulSdk
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield configuration
  end
end
