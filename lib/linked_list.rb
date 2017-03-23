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
            @head.next= Node.new(x)
        end
    end

    def prepend(x)
       #find value of head
       original = head
       #make a new node
       @head = Node.new(x)
       #reassing head to new node
       #have new node point to existing nodes
       @head.next = original
    end

    def insert(place, x)
        #find a place in the list , current at head
        current = head
        #add a new node to the list 
        place.times do
            current = current.next
        end
        new_node = Node.new(x)
        #have that new node point to subsequent nodes
    end

    def count
        current = @head
        count = 1
            while current.next != nil
                count += 1
            current = current.next
            end
        count
    end

    def to_string
        items = ""
        items << @head.data
        current = @head.next
        while current != nil
            items << " " + current.data
            current = current.next
        end
        items
    end
end

# binding.pry
# ""