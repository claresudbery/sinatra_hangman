module Gateway

    class WordGateway

        def initialize(table_name = :words )
            @table_name = table_name
        end

        def create(word)
            Db::Connector.table(@table_name).insert word: word.word, teaser: word.teaser
        end

        def fetch(index)
            Db::Connector.table(@table_name).offset(index).first
        end

        def num_words()
            Db::Connector.table(@table_name).count
        end
    end
    
end