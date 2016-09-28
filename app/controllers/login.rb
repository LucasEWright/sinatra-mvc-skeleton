get '/login' do 
	erb :login
end

post '/login' do
  @user = User.find_by(email: params[:email])
	if @user.authenticate(params[:password])
	 session[:user_id] = @user.id
	 redirect "/users/#{@user.id}"
	else
		redirect '/login'
	end
end

get '/logout' do 
  session.delete(:user_id)
  redirect '/login'
end