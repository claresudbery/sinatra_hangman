describe Gateway::WordGateway do
    it "can fetch a word at an index" do
        fetched_word = described_class.new.fetch(4)
        expect(fetched_word[:word]).to eq "democracy"
    end

    it "returns the number of records in the seed" do
        count = described_class.new.num_words
        expect(count).to eq 11
    end
end