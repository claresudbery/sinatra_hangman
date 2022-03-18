require "sinatra"
require "sinatra/base"
require_relative "./utils/randomiser"

class App < Sinatra::Base
    set :erb, escape_html: true
    DEFAULT_WORD = "no word added"
    DEFAULT_TEASER = "no teaser added"

    def admin_screen
        @word = DEFAULT_WORD
        @teaser = DEFAULT_TEASER
        erb :admin, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}
    end

    def game_screen
        erb :index, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}
    end


    get '/' do
        game_screen
    end

    post '/random' do
        @random_word = UseCase::FetchRandomWord.new(Randomiser.new).execute[:word]
    end

    get '/admin' do
        admin_screen
    end

    post '/admin/word' do
        @word = params["word"]
        @teaser = params["teaser"]
        UseCase::CreateWord.new.execute(@word, @teaser)
        erb :admin, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}      
    end
end
