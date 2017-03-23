require './lib/node'

class LinkedList
require 'pry'
attr_reader :head

    def initialize
        @head = nil
    end

    def append(x)
        if head.nil?
            @head = Node.new(x)
            head.data 
        else
            @head.tail.next_node= Node.new(x)
            x
        end
    end

    def prepend(x)
       original = head
       @head = Node.new(x)
       @head.next_node = original
    end

    def insert(place, x)
        current = head
        (place -1).times do
            current = current.next_node
        end
        new_node = Node.new(x , current.next_node)
        current.next_node = new_node
        
    end

    def find(position, elements)
        current = head
        list = ""
        position.times do
            current = current.next_node
        end
        elements.times do
            if list == ""
            list << current.data
            else
            list << " " + current.data
            end
            current = current.next_node
        end 
        list
    end

    def count
        current = @head
        count = 1
            while current.next_node != nil
                count += 1
            current = current.next_node
            end
        count
    end

    def to_string
        items = ""
        items << @head.data
        current = @head.next_node
        while current != nil
            items << " " + current.data
            current = current.next_node
        end
        items
    end
    
    def includes?(word)
        if to_string.include?(word)
            true
        else
            false
        end
    end
    def pop
        last = head.tail.data
        current = @head
        
        until current.next_node.next_node.nil
            current = current.next_node
        end
        current.next_node =nil
        last
    end
end

list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
# binding.pry
# ""