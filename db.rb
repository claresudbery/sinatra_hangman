require 'sequel'
DB=Sequel.sqlite

DB.create_table :words do
    primary_key :id
    String :word
    String :teaser
end

words_store = DB[:words]

words_store.insert word: "Tennis", teaser: "A game in which two or four players strike a ball with rackets"
- insert more words into database
-readout all words in DB
- print words one after the other
- given a word, pull the record for that word
- Make word column unique (no duplicates of words)
