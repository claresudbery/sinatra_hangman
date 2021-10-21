describe Gateway::WordGateway do
    it "can fetch a word at an index" do
        fetched_word = described_class.new.fetch(4)
        expect(fetched_word[:word]).to eq "democracy"
    end
end