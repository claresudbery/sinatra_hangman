describe "admin page" do
    include RSpecMixin
    include Rack::Test::Methods
    let(:admin_response) {get '/admin'}

    it "successfully goes to admin page" do
        expect(admin_response).to have_http_status(200)
    end
end