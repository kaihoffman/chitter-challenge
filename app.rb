require 'sinatra'
require './lib/peep'

class Chitter < Sinatra::Base
  enable :sessions

  get('/') do
    @peep = Peep.list
    erb :index
  end

  get('/register') do
    erb :register
  end

  run! if app_file == $PROGRAM_NAME

end
