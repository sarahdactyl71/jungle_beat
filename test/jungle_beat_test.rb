require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < MiniTest::Test
    def test_does_jungle_beat_exist
        jb = JungleBeat.new
        assert_instance_of JungleBeat, jb
    end
    def test_it_has_list
        jb = JungleBeat.new
    end    
end
 