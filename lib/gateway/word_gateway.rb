module Gateway

    class WordGateway
        def create(word)
            Db::Connector.table(:words).insert word: word.word, teaser: word.teaser
        end

        def fetch(index)
            Db::Connector.table(:words).offset(index).first
        end

        def num_words()
            Db::Connector.table(:words).count
        end
    end
    
end