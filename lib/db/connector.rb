require 'sequel'

module Db
    class Connector
        def self.table(name)
            connect
            @connection[name]
        end

        def self.connect
            config = {
                type: :sqlite
            }
            unless @connection 
                @connection = Sequel.method(config[:type]).call 
                migrate
            end
        end

        def self.get_connection
            connect
            @connection
        end

        def self.migrate
            Dir["#{__dir__}/migrations/*.rb"].each do | migration |
                load migration
            end
            @connection[:words].all
        end
    end
end

