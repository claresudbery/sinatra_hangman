describe UseCase::CreateWord do
    TEST_WORD = "hello"
    TEST_TEASER = "a greeting"
    it "creates a new word with a teaser" do
        use_case = described_class.new
        use_case.execute(TEST_WORD, TEST_TEASER)

        expect(Db::Connector.table(:words).where(word: TEST_WORD).to_a).not_to be_empty
        expect(Db::Connector.table(:words).where(word: TEST_WORD).first[:teaser]).to eq TEST_TEASER
    end
end