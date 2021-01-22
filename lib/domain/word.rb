module Domain
    class Word
        attr_accessor :word, :teaser

        def initialize(word, teaser)
            @word = word
            @teaser = teaser
        end
    end
end