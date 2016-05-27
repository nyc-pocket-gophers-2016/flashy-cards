get '/login' do
  erb :'sessions/login'
end

post '/sessions' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:id] = @user.id
    redirect '/decks'
  else
    @error = User.new(params[:user]).errors.full_messages
    erb :'sessions/login'
  end
end

get '/logout' do
  session.clear
  redirect '/login'
end
