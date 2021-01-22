require 'sequel'
DB=Sequel.sqlite

DB.create_table :words do
    primary_key :id
    column :word, String, unique: true
    String :teaser
end

words_store = DB[:words]

 {word: "tennis", teaser: "A game in which two or four players strike a ball with rackets"},
 {word: "football", teaser: "Any of various forms of team game involving kicking a ball"},
 {word: "cricket", teaser: "an open-air game played on a large grass field with ball, bats, and two wickets, between teams of eleven players, the object of the game being to score more runs than the opposition."},
 {word: "irony", teaser: "the expression of one's meaning by using language that normally signifies the opposite, typically for humorous or emphatic effect."},
 {word: "democracy", teaser: "a system of government by the whole population or all the eligible members of a state, typically through elected representatives."},
 {word: "synonym", teaser: "a word or phrase that means exactly or nearly the same as another word or phrase in the same language,"},
 {word: "gambit", teaser: "an act or remark that is calculated to gain an advantage, especially at the outset of a situation."},
 {word: "innocuous", teaser: "not harmful or offensive."},
 {word: "stratagem", teaser: "a plan or scheme, especially one used to outwit an opponent or achieve an end"},
 {word: "integrity", teaser: "the quality of being honest and having strong moral principles"},
 {word: "equity", teaser: "the quality of being fair and impartial."},


#get each word in order
words_store.order(:word).each{|w| puts w[:word]}

#get all records
puts words_store.all

#get specific record
puts words_store.first(:id => 6)

#get the teaser for a specific word
puts words_store.where(:word => "irony").get(:teaser)


#prevent duplicate entries
({word: "equity", teaser: "the quality of being fair and impartial.")},

