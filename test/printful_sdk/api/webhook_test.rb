# frozen_string_literal: true

require "test_helper"

class WebhookTest < Minitest::Test
  def test_info
    VCR.use_cassette("webhook_info") do
      response = PrintfulSdk::Api::Webhook.info
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::Webhook, response.result)
    end
  end

  def test_setup
    VCR.use_cassette("webhook_setup") do
      response = PrintfulSdk::Api::Webhook.setup(
        url: "https://dev-pocket.testing.io",
        types: ["package_shipped", "package_returned"],
        params: [],
      )
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::Webhook, response.result)
    end
  end

  def test_disable
    VCR.use_cassette("webhook_disable") do
      response = PrintfulSdk::Api::Webhook.disable
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::Webhook, response.result)
    end
  end
end