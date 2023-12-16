# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'four'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

# Dec 4
class Four < Minitest::Test
  def test_day_four_sample
    assert_equal 13, day_four('sample.txt')
  end
end
