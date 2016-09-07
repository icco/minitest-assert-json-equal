require "minitest-assert-json-equal/version"

module MinitestAssertJsonEqual
end

module Minitest::Assertions
  def assert_json_equal(json_a, json_b, msg=nil)
    a = JSON.parse(json_a)
    b = JSON.parse(json_b)

    assert_equal a, b, msg
  end
end
