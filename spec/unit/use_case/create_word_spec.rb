describe UseCase::CreateWord do
    TEST_WORD = "hello"
    it "creates a new word" do
        use_case = described_class.new
        use_case.execute(TEST_WORD, "a greeting")

        expect(Db::Connector.table(:words).where(word: TEST_WORD).to_a).not_to be_empty

        
    end
end