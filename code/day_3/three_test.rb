# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'three'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

# Dec 3
class Three < Minitest::Test
  def test_day_three_sample
    assert_equal 4361, day_three('sample.txt')
  end

  def test_day_three_real
    assert_equal 522_726, day_three('input.txt')
  end
end
