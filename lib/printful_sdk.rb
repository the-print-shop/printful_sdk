# frozen_string_literal: true

require_relative "printful_sdk/version"

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
