require_relative '../test_constants'

describe "acceptance: words: creating" do
    include RSpecMixin
    before(:all) do
        @post_response = post "/admin/word", :word => TestConstants::WORD, :teaser => TestConstants::TEASER
        @get_response = get "/admin"
    end

    it "doesn't show test word when page is first hit" do
        expect(@get_response.body).not_to include(TestConstants::WORD)
    end

    it "doesn't show test teaser when page is first hit" do
        expect(@get_response.body).not_to include(TestConstants::TEASER)
    end

    it "shows the default word when page is first hit" do
        expect(@get_response.body).to include(App::DEFAULT_WORD)
    end

    it "shows the default teaser when page is first hit" do
        expect(@get_response.body).to include(App::DEFAULT_TEASER)
    end

    it "shows no word on get" do
        expect(@get_response.body).to include("no word added")
    end

    it "returns a 200" do
        expect(@post_response.status).to eq 200
    end
 
    it "shows new word when user adds to database" do
        expect(@post_response.body).to include(TestConstants::WORD)
    end

    it "shows teaser when new word is added" do
        expect(@post_response.body).to include(TestConstants::TEASER)
    end
end


