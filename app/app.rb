require 'sinatra/base'
require_relative File.join(File.dirname(__FILE__), '..', 'lib/diary_entry.rb')

class DailyDiaryApp < Sinatra::Base

  get '/entries' do
    @entries = DiaryEntry.all
    erb :entries
  end

  get '/entries/new' do
    erb :new_entry
  end

  post '/entries/new/added' do
    DiaryEntry.create(title: params[:title], body: params[:body])
    redirect '/entries'
  end

  run! if app_file == $0
end
