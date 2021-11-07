# frozen_string_literal: true

require "test_helper"

class PrintfulSdkTest < Minitest::Test
  def test_configuration
    assert(PrintfulSdk.configuration.api_key)
    assert(PrintfulSdk.configuration.endpoint)
  end

  def test_version
    refute_nil(PrintfulSdk::VERSION)
  end
end
