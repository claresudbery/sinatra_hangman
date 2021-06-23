require "sinatra"
require "sinatra/base"

class App < Sinatra::Base
    set :erb, escape_html: true
    get '/' do
        @word = "no word added"
        erb :index, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}
    end

    post '/admin/word' do
        @word = params["word"]
        @teaser = params["teaser"]
        UseCase::CreateWord.new.execute(@word, @teaser)
        erb :index, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}      
    end
end
