Db::Connector.get_connection.create_table :words do
    primary_key :id
    column :word, String, unique: true
    String :teaser
end
