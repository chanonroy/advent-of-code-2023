# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'six'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

# Dec 6
class Four < Minitest::Test
  def test_day_six_sample
    assert_equal 288, day_six('sample.txt')
  end
  def test_day_six_real
    assert_equal 512295, day_six('real.txt')
  end
end
