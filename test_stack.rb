require 'minitest/autorun'
require_relative 'stack'

class TestStack < MiniTest::Test
    def test_should_push_a_given_item
        stack = Stack.new
        stack.push(2)
        assert_equal 1, stack.size
    end
    def test_should_pop_a_given_item
        stack = Stack.new
        stack.push(2)
        result = stack.pop
        asert_equal 2, result
    end
end