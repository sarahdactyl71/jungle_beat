require './lib/linked_list'
require 'pry'

class JungleBeat
    attr_accessor :list
    def initialize
        @list = LinkedList.new
    end

    def append(data)
        data.split(" ").each do |x|
        list.append(x)
            end
        end

    def count
        list.count
    end

    def play
        `say #{list.to_string}`
    end
end

jb = JungleBeat.new
# binding.pry
# ""