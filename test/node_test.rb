require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "./lib/linked_list"
require "pry"

class NodeTest < Minitest::Test
    def test_does_it_exist
        node = Node.new("")
        assert_instance_of Node, node
    end
    def test_does_it_plop
        node = Node.new("plop")
        assert_equal "plop" , node.data
    end
    def test_next_node_nil
        node = Node.new("plop")
        assert_nil node.next_node
    end
end
    

