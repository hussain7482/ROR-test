class WordController < ApplicationController
 def index
 end
 
 def create
  @user=User.new
  @user.word=params[:word]
  response = RestClient.get "https://api.dictionaryapi.dev/api/v2/entries/en/#{@user.word}"
  
  hash=JSON.parse(response.body)
  @user.meaning= hash["word"]
  @user.save
  
  end
  
  
end
