require 'rspec-html-matchers'

describe "admin page" do
    include RSpecMixin
    include Rack::Test::Methods
    let(:admin_response) {get '/admin'}

    it "successfully goes to admin page" do
        expect(admin_response).to be_ok
    end

    it "displays the word admin to users" do
        expect(admin_response.body).to include("admin page")
    end
end