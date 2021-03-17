class CitiesController < ApplicationController
    set :method_override, true
    set :views, "app/views/cities"

    get '/cities' do
        @cities= City.all
        erb :index
    end

    get '/cities/:id' do
        @city= City.find(params[:id])
        # binding.pry
        erb :show
    end

    
end