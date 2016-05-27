# post '/round' do
#   @deck = Deck.find_by(id: params[:id])
#   @round = Round.create(deck: @deck, user: current_user)
#   redirect "/round/#{@round.id}"
# end

# get '/round/:id' do
#   @round = Round.find_by(id: params[:id])
#   @deck = @round.deck
#   @cards = @deck.cards

# erb :'rounds/show'
#   #Stay on round show page while game is in progress
#   #Direct to results page when game is over
# end
