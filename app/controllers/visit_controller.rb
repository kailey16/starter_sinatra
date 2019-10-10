class VisitController < Sinatra::Base

    set :views, "app/controllers/views/visit"
    set :method_override, true

    get '/visits' do 
        @visits = Visit.all
    
        erb :index
    end 

    get '/visits/:id' do 
        @visit = Visit.find(params[:id])

        erb :show
    end 

    delete '/visits/:id' do
        @visit = Visit.find(params[:id])
        @visit.destroy
        
        redirect "/visits"
    end 
end