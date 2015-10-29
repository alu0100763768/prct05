class NumerosFraccionarios
    attr_reader :x, :y
    def initialize (x, y)
        @num_a, @num_b = x, y
    end
    def to_s
        "(#{@num_a}/#{@num_b})"
    end
    
end