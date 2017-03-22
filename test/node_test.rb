require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "./lib/linked_list"
require "pry"

class NodeTest < Minitest::Test
    def test_does_it_plop
        node = Node.new("plop")
        assert_equal "plop" , node.data
    end
    def test_next_node_nil
        node = Node.new("plop")
        assert_nil node.next_node
    end
    def test_head_is_nil
        list = LinkedList.new
        assert_nil list.head
    end
    def test_append_works
        list = LinkedList.new
        list.append("tralalala")
        assert_equal "tralalala" , list.head.data
    end
    def test_next_node_is_nil
        list = LinkedList.new
        list.append("tralalala")
        assert_nil list.head.next_node
    end
    def test_how_many_things_in_list
        list = LinkedList.new
        list.append("wumpus")
        assert_equal 1 , list.count
    end  
    def test_list_to_string
        list = LinkedList.new
        list.append("lollybone")
        assert_equal "lollybone" , list.to_string
    end
    def test_appedning_two_node
        list = LinkedList.new
        list.append("lollybone")
        list.append("deep")
        assert_equal "deep" , list.head.next_node.data
    end
    def test_count_both_nodes
        list = LinkedList.new
        list.append("lollybone")
        list.append("wumpus")
        assert_equal 2, list.count
    end
    def test_how_many_strings
        skip
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        assert_equal "doop deep" , list.to_string
    end
end

