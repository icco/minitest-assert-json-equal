require 'test_helper'

class MinitestAssertJsonEqualTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MinitestAssertJsonEqual::VERSION
  end

  def test_json_equal
    a = {a: 1}

    assert_json_equal a.to_json, a.to_json
  end 

  def test_json_not_equal
    a = {a: 1}
    b = {b: 1}

    refute_json_equal a.to_json, b.to_json
  end 

  def test_order_doesnt_matter
    a = {a: 1, b: 2}.to_json
    b = "{\"b\":2,\"a\":1}"

    assert_json_equal a, b
  end

  def test_invalid_json_assert
    a = {a: 1, b: 2}.to_json
    b = "{\"b\":2"

    assert_json_equal a, b
  rescue MiniTest::Assertion => e
    assert_equal e.message, "JSON does not parse."
  end

  def test_invalid_json_refute
    a = {a: 1, b: 2}.to_json
    b = "{\"b\":2"

    refute_json_equal a, b
  rescue MiniTest::Assertion => e
    assert_equal e.message, "JSON does not parse."
  end
end
