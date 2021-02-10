describe "acceptance: words: creating" do
    include RSpecMixin
    let(:response) do
        post "/admin/word", JSON.generate({
            word: "meaning",
            teaser: "what is meant by a word, text, concept, or action."
        }) 
    end

    it "returns a 201" do
        expect(response.status).to eq 201
    end
end


