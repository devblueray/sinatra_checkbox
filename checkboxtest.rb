require 'sinatra'

set :port, 3000
set :bind, '0.0.0.0'
get '/' do
    'Hello'
    erb :index
end

post '/cbtest' do
    @cb1bool = !params['cb1'].nil?
    @cb2bool = !params['cb2'].nil?
    @cb1val = params['cb1']
    @cb2val = params['cb2']
    erb :index
end



