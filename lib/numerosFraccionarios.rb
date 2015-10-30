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
        denomi = mcm(@num_b, other.num_b)
        numera = ((denomi / @num_b) * @num_a) + ((denomi / other.num_b) * other.num_a)
        divisor = mcd(numera, denomi)
        NumerosFraccionarios.new(numera / divisor  ,denomi / divisor)
    end
    
    def -(other)
        denomi = mcm(@num_b, other.num_b)
        numera = ((denomi / @num_b) * @num_a) - ((denomi / other.num_b) * other.num_a)
        divisor = mcd(numera, denomi)
        NumerosFraccionarios.new(numera / divisor , denomi / divisor)
    end
    
    def /(other)
        divisor = mcd(@num_a * other.num_b, @num_b * other.num_a)
        NumerosFraccionarios.new((@num_a * other.num_b) / divisor, (@num_b * other.num_a) / divisor)
    end
    
    def *(other)
        divisor = mcd(@num_a * other.num_b, @num_b * other.num_a)
        NumerosFraccionarios.new(@num_a * other.num_a / divisor, @num_b * other.num_b / divisor)
    end
    
    def mcd(u, v)
        u, v = u.abs, v.abs
        while v != 0
            u, v = v, u % v
        end
    u
    end
    
    def mcm(u, v)
       u, v = u.abs, v.abs
       u*v
    end
end