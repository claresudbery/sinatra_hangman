class Randomiser
    def random_int(max_int)
        if max_int == 0
            0
        else
            Kernel.rand(max_int)
        end
    end
end