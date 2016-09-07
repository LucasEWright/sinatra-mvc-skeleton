
# to list all the channels
get '/channels' do 	
	@channels = Channel.all
erb :'channels/index'
end

# to list the details of one channel
get '/channels/:id' do
	@channel = Channel.find(params[:id])	
erb :'/channels/show'
end