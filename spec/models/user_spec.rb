
require 'rails_helper'

RSpec.describe User, type: :model do
  it "should create user if all are correct" do
  user=User.create(word: "hello", meaning: "greetings")
    
    expect(user.word).to eq("hello")
    expect(user.meaning).to eq("greetings")
   end
   
   it "should be able to count" do
   user=User.create(word: "hello",meaning: "greetings") 
    expect(User.count).to eq(1)
   end
   
   it "should return error when word is blank" do
   user=User.new(word: "")
    expect(user).to_not be_valid
   end 

end

