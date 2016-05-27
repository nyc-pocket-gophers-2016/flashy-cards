#get users/new
get '/users/new' do
  erb :'users/new'
end

#post users
post '/users' do
  # binding.pry
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    @error = @user.errors.full_messages
    erb :'users/new'
  end
end
