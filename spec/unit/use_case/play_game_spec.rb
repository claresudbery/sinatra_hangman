
describe UseCase::FetchRandomWord do

    EXPECTED_WORDS = {5 => "democracy",
        7 => "gambit"
        }
    EXPECTED_WORDS.each do |index, word|
        it "chooses 5th word when randomiser returns 5" do
            randomiser_stub = double('Randomiser')
            use_case = described_class.new(randomiser_stub)
            allow(@randomiser_stub).to receive(:random_int).and_return(index)
            returned_word = use_case.execute()
    
            expect(returned_word.word).to eq(word)
        end
    end    
end