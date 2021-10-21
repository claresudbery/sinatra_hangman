require_relative '../../../lib/exceptions/empty_table_error'

describe Gateway::WordGateway do
    before(:each) do
        @word_gateway = described_class.new 
    end
    it "can fetch a word at an index" do
        fetched_word = @word_gateway.fetch(4)
        expect(fetched_word[:word]).to eq "democracy"
    end

    it "returns the number of records in the seed" do
        count = @word_gateway.num_words
        expect(count).to eq 11
    end

    it "throws an exception if user asks for word from an empty table" do
        word_gateway = Gateway::WordGateway.new(:empty)
        expect{word_gateway.fetch(word_gateway.num_words)}.to raise_error(EmptyTableError)
    end
end