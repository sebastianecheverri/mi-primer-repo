require "sinatra"

get "/" do
    @name = "Sebastian Echeverri"
    erb :index
end

get '/home' do
    @greet = 'Estoy en home'
    erb :home, layout: :layout_home
end

get '/contact' do
    "Estoy en contact"
    @phone = 3004838142
    @email = "sebastianecheverri900@gmail.com"
end

get '/productos' do
    "Estoy en productos"
    @productos = [1,2,3,4,5,6]
end

get '/greet' do
    "Hola #{params[:name]}"
end

get '/age-in-5-years/:age' do
    @age = params[:age].to_i
    "Tu edad en 5 años será #{@age + 5}"
end

get '/' do
    status 200
    headers "Content-Type" => "text/html"
    body "Hola Mundo"

    erb :index
end

post '/make-a-post' do
    [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un post"]
end

put '/make-a-put' do
    [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un put"]
end

delete '/make-a-delete' do
    [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un delete"]
end

#HTTParty.put('http://localhost:4567/make-a-put', :headers => {"Content-Type" => 'application/json'})