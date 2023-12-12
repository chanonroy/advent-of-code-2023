# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '1'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

# Dec 1
class One < Minitest::Test
  def test
    assert_equal 54_708, calibration_document_sum('1.txt')
  end
end
