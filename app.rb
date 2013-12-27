require 'sinatra'
require 'date'

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/test' do
	@today = Date.today.strftime("%A, %B %e %Y")
	erb :'misc/test'
end

get '/contact' do
	erb :contact
end

post '/contact' do
	name = params[:name]
	email = params[:email]
	"#{name}; email is: #{email}"
end