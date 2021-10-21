
describe UseCase::FetchRandomWord do

    before(:each) do 
        @randomiser_stub = double('Randomiser')
        @use_case = described_class.new(@randomiser_stub)
    end

    EXPECTED_WORDS = {4 => "democracy",
        6 => "gambit"
        }
    EXPECTED_WORDS.each do |index, word|
        it "chooses 5th word when randomiser returns 5" do
            #arrange
            allow(@randomiser_stub).to receive(:random_int).and_return(index)

            #act
            returned_word = @use_case.execute()
    
            #assert
            expect(returned_word[:word]).to eq(word)
        end
    end    
end