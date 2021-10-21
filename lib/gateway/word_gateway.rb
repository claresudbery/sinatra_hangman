require_relative '../exceptions/empty_table_error'

module Gateway

    class WordGateway

        def initialize(table_name = :words)
            @table_name = table_name
        end

        def create(word)
            Db::Connector.table(@table_name).insert word: word.word, teaser: word.teaser
        end

        def fetch(index)
            if self.num_words == 0
                raise EmptyTableError
            else
                Db::Connector.table(@table_name).offset(index).first
            end
        end

        def num_words()
            Db::Connector.table(@table_name).count
        end
    end
    
end