describe "homepage" do
    include RSpecMixin
    include Rack::Test::Methods
    let(:response) {get '/'}
    it "displays the current date" do
        expect(response.body).to include Time.new.strftime("%d/%m/%Y")
    end

    it "displays game objective to users" do
        expect(response.body).to include("phrase")
    end
end

