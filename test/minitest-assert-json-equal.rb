require 'test_helper'

class MinitestAssertJsonEqualTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MinitestAssertJsonEqual::VERSION
  end
end
