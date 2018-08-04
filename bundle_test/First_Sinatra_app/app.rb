require 'bundler/setup'
Bundler.require(:default)
require "./models.rb"

set :database, "sqlite3:myblogdb.sqlite3"



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

# get '/greet' do
#     "Hola #{params[:name]}"
# end

# get '/age-in-5-years/:age' do
#     @age = params[:age].to_i
#     "Tu edad en 5 años será #{@age + 5}"
# end

# get '/' do
#     status 200
#     headers "Content-Type" => "text/html"
#     body "Hola Mundo"

#     erb :index
# end

# post '/make-a-post' do
#     [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un post"]
# end

# put '/make-a-put' do
#     [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un put"]
# end

# delete '/make-a-delete' do
#     [200, {"Content-Type" => "text/hmtl" }, "Acabas de hacer un delete"]
# end

# get '/area-rectangulo' do
#     "El area del rectangulo es #{params[:base].to_i*params[:altura].to_i}"
# end

get "/form" do
    erb :form
end

post "/from_form" do
    name = params[:name]
    surname = params[:surname]
    email = params[:email]
    erb :from_form
end

get '/login' do
    erb :login
end

post '/login' do
    response.set_cookie('email', value: params[:email])
    response.set_cookie('password', value: params[:password])
    redirect '/'
end

get '/' do
    if request.cookies["email"] && request
    @posts = Post.all
    @name = 'Sebastian'
    erb :home
    else
        redirect '/login'
    end
end

post  '/post' do
    @post = Post.create(title: params[:title], body: params[:body])
    redirect '/'
    end
end

get "/post/:id" do
    @post = Post.find(params[:id])
    erb :post_page
    end
end



 
#HTTParty.put('http://localhost:4567/make-a-put', :headers => {"Content-Type" => 'application/json'})