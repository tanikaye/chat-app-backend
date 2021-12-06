class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  # get '/' do
  #   "Hello World"
  # end

  get "/users" do
    users=User.all
    users.to_json
  end

  get "/users/:id" do
    user=User.find(params[:id])
    user.to_json(include: { conversations: { include: :messages } })
  end

  get "/conversations" do
    user=Conversation.all
    user.to_json
  end
  get "/messages" do
    user=Message.all
    user.to_json
  end
   
  # delete '/messages/:id' do
  #   rm_message= Message.find(params[:id])
  #   rm_message.destroy
  #   rm_message.to_json
  # end
  

  
end
