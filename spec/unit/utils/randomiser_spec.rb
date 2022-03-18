
require_relative "../../../lib/utils/randomiser"

describe Randomiser do
    before(:each) do 
        @randomiser = described_class.new
    end
    
    it "will always return 0 when max_int is 0" do
        #arrange
        max_int = 0

        #act
        random_index = @randomiser.random_int(max_int)
        
        #assert
        expect(random_index).to eq(0)
    end
end