# frozen_string_literal: true

require "test_helper"

class MockupTest < Minitest::Test
  def test_printfiles
    VCR.use_cassette("mockup_printfiles") do
      response = PrintfulSdk::Api::Mockup.printfiles(
        71,
        orientation: "vertical"
      )
      assert_equal(200, response.code)
      assert_kind_of(PrintfulSdk::Resource::PrintfileInfo, response.result)
    end
  end
end
