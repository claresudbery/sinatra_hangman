describe "acceptance: words: creating" do
    include RSpecMixin
    let(:response) do
        post "/admin/word", :word => "meaning"
    end

    it "returns a 201" do
        expect(response.status).to eq 201
    end

    it "shows new word when user adds to database" do
        expect(response.body).to include("meaning")
    end
end


