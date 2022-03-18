describe UseCase::CreateWord do
    it "creates a new word with a teaser" do
        use_case = described_class.new
        use_case.execute(TestConstants::WORD, TestConstants::TEASER)

        expect(Db::Connector.table(:words).where(word: TestConstants::WORD).to_a).not_to be_empty
        expect(Db::Connector.table(:words).where(word: TestConstants::WORD).first[:teaser]).to eq TestConstants::TEASER
    end
end