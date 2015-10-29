class NumerosFraccionarios
    attr_reader :num_a, :num_b
    def initialize (x, y)
        if (y != 0)
            @num_a, @num_b = x, y
        end
    end
    
    def to_s
        "(#{@num_a}/#{@num_b})"
    end
    
    def +(other)
        
    end
    
    def -(other)
        
    end
    
    def /(other)
        
        NumerosFraccionarios.new(@num_a * other.num_b, @num_b * other.num_a)
    end
    
    def *(other)
        
        NumerosFraccionarios.new(@num_a * other.num_a, @num_b * other.num_b)
    end
    
end