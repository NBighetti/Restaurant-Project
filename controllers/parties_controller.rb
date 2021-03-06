class PartiesController < Sinatra::Base
  enable  :sessions

  def party_params
    return params[:party] if params[:party]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['party'] || body_data
  end

  get '/pry' do
    binding.pry
  end

  get '/' do
    parties = Party.all
    content_type :json
    parties.to_json(include: :foods, methods: :total)
  end

  get '/:id' do
    party = Party.find(params[:id].to_i)
    content_type :json
    party.to_json(include: :foods)
  end

  post '/' do
    party = Party.create(party_params)
    content_type :json
    party.to_json(include: :foods)
  end

  patch '/:id' do
    party = Party.find(params[:id].to_i)
    party.update(party_params)
    content_type :json
    party.to_json(include: :foods)
  end

  put '/:id' do
    party = Party.find(params[:id].to_i)
    party.update(party_params)
    content_type :json
    party.to_json(include: :foods)
  end

  delete '/:id' do
    Party.destroy(params[:id].to_i)
    content_type :json
    {success: "ok"}.to_json
  end
end
