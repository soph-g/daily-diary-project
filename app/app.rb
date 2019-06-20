require 'sinatra/base'
require_relative File.join(File.dirname(__FILE__), '..', 'lib/diary_entry.rb')

class DailyDiaryApp < Sinatra::Base

  get '/entries' do
    @entries = DiaryEntry.all
    erb :entries
  end

  run! if app_file == $0
end
