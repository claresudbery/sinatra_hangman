
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
    
    it "offsets maximum by 1 when calling randomiser" do
        #arrange
        test_word_table_size = 11
        
        #assert
        expect(@randomiser_stub).to receive(:random_int).with(test_word_table_size - 1)

        #act
        @use_case.execute()
    end

    it "should use table size when calling randomiser" do
        #arrange
        test_word_table_size = 11
        
        #assert
        expect(@randomiser_stub).not_to receive(:random_int).with(test_word_table_size)

        #act
        @use_case.execute()
    end
end