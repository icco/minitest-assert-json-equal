require 'minitest-assert-json-equal/version'
require 'minitest'
require 'json'

module MinitestAssertJsonEqual
end

module Minitest::Assertions
  def assert_json_equal(json_a, json_b, msg = nil)
    a = JSON.parse(json_a)
    b = JSON.parse(json_b)

    msg = message(msg, '') do
      'Expected json to match.'
    end

    assert_equal a, b, msg
  rescue JSON::ParserError
    msg = message(msg, '') do
      'JSON does not parse.'
    end
    flunk msg
  end

  def refute_json_equal(json_a, json_b, msg = nil)
    a = JSON.parse(json_a)
    b = JSON.parse(json_b)

    msg = message(msg, '') do
      'Expected json to match.'
    end

    refute_equal a, b, msg
  rescue JSON::ParserError
    msg = message(msg, '') do
      'JSON does not parse.'
    end
    flunk msg
  end
end
