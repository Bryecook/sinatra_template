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

    get '/create_city' do
        erb :create_city
    end 

    post '/cities' do
        @city = City.create(name: params["city_name"], state: params["city_state"])
        redirect "/cities/#{@city.id}"
    end

    get '/cities/:id/edit' do
        @city = City.find(params[:id])

        erb :edit

    end


    patch '/cities/:id' do
        @city = City.find(params[:id])
        @city.update(name: params["city_name"], state: params["city_state"])

        redirect "/cities/#{@city.id}"
    end


    delete '/cities/:id' do 
       @city = City.find(params[:id])
       @city.destroy

       redirect '/cities'
    end



    
end