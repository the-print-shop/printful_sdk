# frozen_string_literal: true

require "test_helper"

class CountryTest < Minitest::Test
  def test_list
    VCR.use_cassette("country_list") do
      response = PrintfulSdk::Api::Country.list
      assert_equal(200, response.code)
      response.result.each do |country|
        assert_kind_of(PrintfulSdk::Resource::Country, country)
      end
    end
  end
end