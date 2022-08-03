class WordController < ApplicationController
 def index
 end
 
 def create
  @user=User.new
  @user.word=params[:word]
  @user.save
  response = RestClient.get "https://api.dictionaryapi.dev/api/v2/entries/en/#{@user.word}"
  @user.meaning=response.body[:definition]
  
  end
  
  
end
