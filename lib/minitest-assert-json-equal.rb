require "minitest-assert-json-equal/version"
require "minitest"
require "json"

module MinitestAssertJsonEqual
end

module Minitest::Assertions
  def assert_json_equal(json_a, json_b, msg=nil)
    a = JSON.parse(json_a)
    b = JSON.parse(json_b)

    msg = message(msg, "") {
      "Expected json to match."
    }

    assert_equal a, b, msg
  rescue JSON::ParserError
    msg = message(msg, "") {
      "JSON does not parse."
    }
    flunk msg
  end

  def refute_json_equal(json_a, json_b, msg=nil)
    a = JSON.parse(json_a)
    b = JSON.parse(json_b)

    msg = message(msg, "") {
      "Expected json to match."
    }

    refute_equal a, b, msg
  rescue JSON::ParserError
    msg = message(msg, "") {
      "JSON does not parse."
    }
    flunk msg
  end
end
