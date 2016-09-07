require 'test_helper'

class Minitest::Assert::Json::EqualTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Minitest::Assert::Json::Equal::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
