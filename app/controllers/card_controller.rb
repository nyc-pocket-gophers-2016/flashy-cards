get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :'cards/index'
end
