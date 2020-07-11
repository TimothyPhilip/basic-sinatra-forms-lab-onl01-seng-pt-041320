require 'sinatra/base'

class App < Sinatra::Base


    get '/newteam' do
        erb :newteam
    end

    post '/newteam' do
        @team_name = params["name"]
        @coach_name = params['coach']
        @pg_name = params['pg']
        @sg_name = params['sg']
        @sf_name = params['sf']
        @pf_name = params['pf']
        @center_name = params['c']
        erb :team
    end

    get '/team' do
        erb :team 
    end

end
