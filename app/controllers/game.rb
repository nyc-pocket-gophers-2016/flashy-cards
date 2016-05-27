

#post rounds
post '/rounds' do
  @deck = Deck.find_by(id: params[:id])
  @round = @deck.round.create
  erb :'rounds/show'
end

#get rounds/:id/cards/:id
get '/rounds/:id/cards/:id' do
  @deck = Deck.find_by(id: params[:id])
  @round = @deck.rounds.find_by(id: params[:id])
  @card = @deck.cards.find_by(id: params)
  erb :'cards/show'
end

#post guesses (redirects to rounds/:id/cards/:id) until game over
post '/guesses' do
  @user = current_user
  @round = Round.find_by(id: params[:id])
  @card = @round.deck.cards.find_by(id: params[:id])
  #if cards in deck
  redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end

#get rounds/:id
get '/rounds/:id' do
  @round = Round.last
  erb :'rounds/show'
end
