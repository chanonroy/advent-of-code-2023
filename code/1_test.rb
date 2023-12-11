# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '1'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

# Dec 1
class One < Minitest::Test
  def setup
    @calculator = 1
  end

  def test_addition
    assert_equal 1, @calculator, 'Calculator should be initialized to 1'
  end

  def test_addition2
    assert_equal 1, @calculator, 'Calculator should be initialized to 1'
  end
end
