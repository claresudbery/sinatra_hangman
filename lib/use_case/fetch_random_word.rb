require_relative '../../spec/test_constants'

module UseCase 
    class FetchRandomWord

        def initialize(randomiser, word_gateway)
            @randomiser = randomiser
            @word_gateway = word_gateway
        end

        def execute()
            table_count = @word_gateway.num_words

            if table_count == 0
                {word: TestConstants::NO_WORDS}
            else
                random_index = @randomiser.random_int(table_count - 1)
                @word_gateway.fetch(random_index)
            end
        end
    end
end