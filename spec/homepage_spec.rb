describe "homepage" do
    include RSpecMixin
    let(:response) {get '/'}
    it "displays the current date" do
        expect(response.body).to include Time.new.strftime("%d/%m/%Y")
    end
end