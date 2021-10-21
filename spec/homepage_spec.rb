describe "homepage" do
    include RSpecMixin
    include Rack::Test::Methods
    let(:default_response) {get '/'}
    it "displays the current date" do
        expect(default_response.body).to include Time.new.strftime("%d/%m/%Y")
    end

    it "displays game objective to users" do
        expect(default_response.body).to include("phrase")
    end

    
end

