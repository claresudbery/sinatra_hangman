module Gateway

    class WordGateway
        def create(word)
            Db::Connector.table(:words).insert word: word.word, teaser: word.teaser
        end
    end
    
end