module UseCase 
    class FetchRandomWord

        def initialize(randomiser)
        end

        def execute()
            Domain::Word.new "democracy", ""
        end
    end
end