require "test_helper"

class GiggleTest < Test::Unit::TestCase
  def test_giggle
    assert_equal "zizzle", "giggle".giggle
  end

  def test_giggle_version
    assert_equal "0.0.1", Giggle::VERSION
  end
end
