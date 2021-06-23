describe "acceptance: words: creating" do
    include RSpecMixin
    let(:get_response) do
        get "/"
    end
    let(:post_response) do
        post "/admin/word", :word => "meaning"
    end

    it "returns a 200" do
        expect(post_response.status).to eq 200
    end

    it "shows new word when user adds to database" do
        expect(post_response.body).to include("meaning")
    end

    it "shows no word on get" do
        expect(get_response.body).to include("no word added")
    end
end


