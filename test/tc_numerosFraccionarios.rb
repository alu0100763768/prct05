require 'lib/numerosFraccionarios'
require 'test/unit'

class TestNumerosFraccionarios < Test::Unit::TestCase
    def setup
        @x = NumerosFraccionarios.new(2,2)
        @y = NumerosFraccionarios.new(2,3)
    end
    def test_simple
        assert_equal("(2/2)", @x.to_s)
        assert_equal("(2/3)", @y.to_s)
    end
end