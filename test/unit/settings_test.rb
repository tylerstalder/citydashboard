require 'test_helper'

class SettingsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Settings.new.valid?
  end
end
