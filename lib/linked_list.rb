require './lib/node'

class LinkedList
require 'pry'
attr_reader :head

    def initialize
        @head = nil
    end

    def append(x)
        if @head == nil
            @head = Node.new(x) 
        else
            @head.next_node = Node.new(x)
        end
    end

    def count
        current_node = @head
        count = 0
       
        if current_node.next_node == nil
            count += 1
        else
            count += 1
            current_node = current_node.next_node
        end
        count
    end
    def to_string
        @head.data
    end
end