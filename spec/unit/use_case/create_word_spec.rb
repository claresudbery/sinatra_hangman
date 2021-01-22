describe UseCase::CreateWord do
    it "creates a new word" do
        use_case = described_class.new
        use_case.execute("hello", "a greeting")

        expect(Db::Connector.table(:words).where(word: "hello").to_a).not_to be_empty
        
    end
end