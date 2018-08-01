require "sinatra"

get "/" do
    @name = "Sebastian Echeverri"
    erb :index
end

get '/home' do
    "Estoy en Home"
    @saludo = "Welcome"
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