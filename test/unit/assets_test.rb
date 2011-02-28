require 'test_helper'

class AssetsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Assets.new.valid?
  end
end
