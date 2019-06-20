require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base

  get '/entries' do
    erb :entries
  end
end
