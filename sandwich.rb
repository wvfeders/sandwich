require "sinatra"
#enable sessions
get '/' do
    erb  :home  #calls the erb file home.erb that is stored in the views folder
end

post '/sandwich_choice' do #looks in the component called sandwich_choice created in home.erb

 redirect '/show_sandwich?sandwich=' + params[:a_sandwich] +
 	'&topping=' + params[:a_topping] +
 	'&side=' +params[:a_side]
 	 #assigns the sandwich type in 'a_sandwich' to 'sandwich' 
 															#and sends it to show_sandwich.erb 
end


get '/show_sandwich' do
    erb :show_sandwich, :locals => {:your_sandwich => params[:sandwich],
    								 :your_topping => params[:topping],
    								 :your_side => params[:side]} #calls show_sandwich.erb and assigns the text 
    																	  #in 'sandwich' to the variable 'your_sandwich' 
    																	  #which is needed in show _sandwich.erb 	
end

# '&side=' + side + '&shake=' + shake

# erb :order, :locals => {:sandwich => sandwich, :side => side, :shake => shake}