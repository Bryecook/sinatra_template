class RestaurantsController < ApplicationController
    set :method_override, true
    set :views, "app/views/restaurants", "app/views/cities"

    get '/restaurants' do
        @restaurants=Restaurant.all
        erb :index
    end

    get '/restaurants/new' do
        @cities=City.all
        erb :new
    end

    post '/restaurants' do
        id= params["city_id"].to_i
        @restaurant = Restaurant.create(name: params["restaurant_name"], city_id: params["city_id"].to_i)
        redirect '/restaurants'
        # redirect '/cities/:#{@restaurant.city_id}'
    end 

end