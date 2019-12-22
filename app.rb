#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello!!!!!! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	@error = 'Чтото пошло не так'
	erb :about
end	


get '/contacts' do
	erb :contacts
end	

get '/visit' do
	erb :visit
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@data_time = params[:data_time]
	@barber = params[:barber]
	@colors = params[:colors]

	

	if @username == ''
		@error = "Введите ваше имя" 
		return erb :visit
   end

   if @phone == ''
   		@error = "Введите ваш телефон "
   	 return erb :visit
   end		

   if @data_time == ''
   	@error = "Введите дату и время "
     return erb :visit
   end
   
   if @barber == ''
   	@error = "Введите парикмахера"

   elsif @barber == 'Список парикмахеров:'
   	@error = "Введите парикмахера"
return erb :visit
   end

   


erb "Пользователь: #{@username} Время записи: #{@data_time} Связь с клиентом #{@phone}  Парикмахер: #{@barber} Выбран цвет: #{@colors} "


end	


