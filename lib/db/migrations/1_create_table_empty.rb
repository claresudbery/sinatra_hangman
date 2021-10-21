Db::Connector.get_connection.create_table :empty do
    primary_key :id
    column :word, String, unique: true
    String :teaser
end
