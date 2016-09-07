# to send guest to register page
get '/users/new' do 
	erb :'/users/new'
end

# to create a new user
post '/users' do
	User.create(params)
	redirect '/login'
end

# to show the user's profile
get '/users/:id' do
	@user = User.find(session[:user_id])
	erb :'/users/show'	
end

# to create a new subscriptions
post '/users/:user_id/channels/:id' do 
  user = User.find(session[:user_id])
  channel = Channel.find(params[:id])
  Subscription.create(user_id: user.id, channel_id: channel.id)
  redirect "/users/#{user.id}"
end 

# should be a delete call (not get), but I couldnt get it to work otherwise
get '/users/:user_id/channels/:id?' do 
  user = User.find(session[:user_id])
  channel = Channel.find(params[:id])
  subscription = Subscription.find_by(user_id: user.id, channel_id: channel.id)
  subscription.destroy
  redirect "/users/#{user.id}"
end 