module UseCase 
    class CreateWord

        def initialize
            @word_gateway = Gateway::WordGateway.new
        end

        def execute(word, teaser)
            @word_gateway.create Domain::Word.new word, teaser
        end
    end
end