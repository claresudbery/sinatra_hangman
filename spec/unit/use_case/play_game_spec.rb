
describe UseCase::FetchRandomWord do
    EXPECTED_WORD_INDEX = 5
     
    

    
    it "chooses a random word for new game" do
        randomiser_stub = double('Randomiser')
        use_case = described_class.new(randomiser_stub)
        allow(@randomiser_stub).to receive(:random_int).and_return(EXPECTED_WORD_INDEX)
        returned_word = use_case.execute()

        expect(returned_word.word).to eq("democracy")
    end
end