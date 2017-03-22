
class Node
    attr_reader :data 
    attr_accessor :next_node

    def initialize(word)
        @data = word
        @next_node = nil
    end


end