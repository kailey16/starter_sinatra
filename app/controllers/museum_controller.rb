class MuseumController < Sinatra::Base

    set :views, "app/controllers/views/museum"
    set :method_override, true

    get '/museums' do 
        @museums = Museum.all
    
        erb :index
    end 

    get '/museums/new' do

        erb :new
    end 

    post '/museums' do 
        @museum = Museum.create(params)

        redirect "/museums/#{@museum.id}"
    end 

    get '/museums/:id' do 
        @museum = Museum.find(params[:id])

        erb :show
    end 

    get '/museums/:id/edit' do 
        @museum = Museum.find(params[:id])
        
        erb :edit 
    end 

    patch '/museums/:id' do 
        @museum = Museum.find(params[:id])
        @museum.update(name: params[:name], location: params[:location])
        @museum.save

        redirect "/museums/#{@museum.id}"
    end 

    delete '/museums/:id' do
        @museum = Museum.find(params[:id])
        @museum.destroy
        
        redirect "/museums"
    end 
end