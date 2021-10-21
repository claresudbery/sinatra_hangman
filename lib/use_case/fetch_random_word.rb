module UseCase 
    class FetchRandomWord

        def initialize(randomiser)
            @word_gateway = Gateway::WordGateway.new
            @randomiser = randomiser

        end

        def execute()
            table_count = @word_gateway.num_words
            random_index = @randomiser.random_int(table_count)
            @word_gateway.fetch(random_index)
        end
    end
end