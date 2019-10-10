class GuestController < Sinatra::Base

    set :views, "app/controllers/views/guest"
    set :method_override, true

    get '/guests' do 
        @guests = Guest.all
    
        erb :index
    end 

    get '/guests/new' do

        erb :new
    end 

    post '/guests' do 
        @guest = Guest.create(params)

        redirect "/guests/#{@guest.id}"
    end 

    get '/guests/:id' do 
        @guest = Guest.find(params[:id])

        erb :show
    end 

    get '/guests/:id/edit' do 
        @guest = Guest.find(params[:id])
        
        erb :edit 
    end 

    patch '/guests/:id' do 
        @guest = Guest.find(params[:id])
        @guest.update(name: params[:name], age: params[:age], gender: params[:gender])
        @guest.save

        redirect "/guests/#{@guest.id}"
    end 

    delete '/guests/:id' do
        @guest = Guest.find(params[:id])
        @guest.destroy
        
        redirect "/guests"
    end 
end