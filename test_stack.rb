require 'minitest/autorun'
require_relative 'stack'

class TestStack < MiniTest::Test
    def test_stack_should_be_empty_on_construction
        stack = Stack.new
        assert stack.empty?
    end
    def test_after_n_pushes_to_empty_stack_it_is_not_empty
        stack =Stack.new
        stack.push(2)
        stack.push(4)
        refute stack.empty?
    end
    def test_should_push_a_given_item
        stack = Stack.new
        stack.push(2)
        assert_equal 1, stack.size
        assert_equal 2, stack.top
    end
    def test_should_pop_a_given_item
        stack = Stack.new
        stack.push(2)
        result = stack.pop
        assert_equal 2, result
        assert_equal 0, stack.size
    end
    def test_after_n_pushes_to_empty_stack_size_is_n
        stack = Stack.new
        stack.push(2)
        stack.push(4)
        assert_equal 2, stack.size
    end
end