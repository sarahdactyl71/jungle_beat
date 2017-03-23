require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require "./lib/linked_list"
require "pry"

class LinkedListTest < Minitest::Test

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
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        assert_equal "doop deep" , list.to_string
    end
    def test_does_prepend_work
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        assert_equal "dop plop suu" , list.to_string
    end
    def test_does_insert_work
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        assert_equal "dop woo plop suu" , list.to_string
    end
    def test_does_find_work
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        assert_equal "shi", list.find(2,1)
        assert_equal "woo shi shu" , list.find(1,3)
    end
    def does_includes_work?
         list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        assert_equal true, list.includes?("deep")
        assert_equal false, list.includes?("wumpus")
    end
    def does_pop_work
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        assert_equal "blop" , list.pop
        assert_equal "shu" , list.pop
    end
    
end