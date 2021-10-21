describe "admin page" do
    include RSpecMixin
    include Rack::Test::Methods
    let(:admin_response) {get '/admin'}

    it "successfully goes to admin page" do
        expect(admin_response).to be_ok
    end
end