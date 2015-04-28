# require 'bundler'
# Bundler.require()
#
# ActiveRecord::Base.establish_connection(
#   :adapter => 'postgresql',
#   :database => 'restaurant_pos'
# )
#
# require './models/food'
# require './models/order'
# require './models/party'
#
# get '/' do
#   index :erb
# end
#
# # GET	/	Displays the waitstaff's application
# # get do
# # end
#
# # GET	/api/foods	All food items available # this works
# get '/api/foods' do
#   foods = Food.all
#   content_type :json
#   foods.to_json
# end
#
# # GET	/api/foods/:id	A single food item and all the parties that included it
# get '/api/foods/:id' do
#   foods = Food.find(params[:id].to_i)
#   parties = Party.find(params[:id].to_i)
#   content_type :json
# end
#
# # POST	/api/foods	Creates a new food item
# post '/api/foods' do
#   food = Food.create(params[:food])
#   content_type :json
#   food.to_json
# end
#
# # PATCH	/api/foods/:id	Updates a food item
# patch '/api/foods/:id' do
#   food = Food.find(params[:id].to_i)
#   food.update(params[:food])
#   content_type :json
#   food.to_json
# end
#
# # PUT	/api/foods/:id	Updates a food item
# put '/api/foods/:id' do
#   food = Food.find(params[:id].to_i)
#   food.update(params[:food])
#   content_type :json
#   food.to_json
# end
#
# # DELETE	/api/foods/:id	Deletes a food item
# delete '/api/foods/:id' do
#   content_type :json
#   food = Food.find(params[:id].to_i).destroy
#   {message: "food deleted"}.to_json
# end
#
# # GET	/api/parties	All parties
# get '/api/parties' do
#   parties = Party.all.to_json
#   content_type :json
#   party.to_json
# end
#
# # GET	/api/parties/:id	A single party and all the orders it contains
#
# # POST	/api/parties	Creates a new party
# post '/api/parties' do
#   party = Party.create(params[:party])
#   content_type :json
#   party.to_json
# end
#
# # PATCH	/api/parties/:id	Updates a party's details
# patch '/api/parties/:id' do
#   party = Party.find(params[:id].to_i)
#   party.update(params[:party])
#   content_type :json
#   user.to_json
# end
#
# # PUT	/api/parties/:id	Updates a party's details
# put '/api/parties/:id' do
#   party = Party.find(params[:id].to_i)
#   party.update(params[:party])
#   content_type :json
#   user.to_json
# end
#
# # DELETE	/api/parties/:id	Delete a party
# delete '/api/parties/:id' do
#   content_type :json
#   food = Food.find(params[:id].to_i).destroy
#   {message: "food deleted"}.to_json
# end
#
# # POST	/api/orders	Creates a new order
# post '/api/parties' do
#   Order = Order.create(params[:order])
#   content_type :json
#   order.to_json
# end
#
# # PATCH	/api/orders/:id	Change item to no-charge
# patch '/api/order/:id' do
#   order = Order.find(params[:id].to_i)
#   order.update(params[:order])
#   content_type :json
#   order.to_json
# end
#
# # DELETE	/api/orders/:id	Removes an order
# delete '/api/orders/:id' do
#   content_type :json
#   order = order.find(params[:id].to_i).destroy
#   {message: "delete order"}.to_json
# end
#
# # GET	/api/parties/:id/receipt	Saves the party's receipt data to a file.
#
#
# # PATCH	/api/parties/:id/checkout	Marks the party as paid
#
#
# # PUT	/api/parties/:id/checkout	Marks the party as paid
