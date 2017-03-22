
class Node
    attr_reader :data  
    attr_accessor :next

    def initialize(word)
        @data = word
        @next = nil
    end


end