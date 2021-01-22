

describe Db::Connector do
    it "connects to the database" do
        words = described_class.table(:words)
        expect(words.where(word: "tennis").first[:teaser]).to eq "A game in which two or four players strike a ball with rackets"
    end
end