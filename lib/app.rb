require "sinatra"
require "sinatra/base"

class App < Sinatra::Base
    set :erb, escape_html: true
    get '/' do
        erb :index, layout: :layout, locals: {current_date: Time.new.strftime("%d/%m/%Y")}
    end

    post '/admin/word' do
        
    end
end
