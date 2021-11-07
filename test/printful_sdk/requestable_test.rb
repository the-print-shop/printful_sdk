# frozen_string_literal: true

require "test_helper"

class RequestableTest < Minitest::Test
  class TestClient
    include PrintfulSdk::Requestable
  end

  def test_include_httparty_module
    assert_includes(TestClient, HTTParty)
  end

  def test_auth_header
    assert_equal(PrintfulSdk.configuration.endpoint, TestClient.default_options[:base_uri])
    assert_match(/Basic *+/, TestClient.default_options[:headers]["Authorization"])
  end
end
