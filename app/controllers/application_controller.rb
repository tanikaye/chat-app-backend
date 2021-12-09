class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/' do
    "Hello World"
  end

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

  get "/conversations/:id" do
    convo=Conversation.find(params[:id])
    convo.to_json
  end

  get "/conversations/:id/messages" do
    msg=Conversation.find(params[:id]).messages
    msg.to_json
  end
  # get "/conversations/" do
  #   msg=Conversation.a
  #   msg.to_json
  # end

  delete '/messages/:id' do
    rm_msg= Message.find(params[:id])
    rm_msg.destroy
    rm_msg.to_json
  end

  delete '/conversations/:id' do
    rm_convo= Conversation.find(params[:id])
    rm_convo.destroy
    rm_convo.to_json
  end

  post '/users' do
    new_user = User.create(
      username: params[:username],
      full_name: params[:full_name],
      email: params[:email]
  )
    new_user.to_json
  end 


  post '/messages' do 
     new_message = Message.create(
     message: params[:message],
     user_id: params[:user_id],
     conversation_id: params[:conversation_id]
     )
     new_message.to_json
  end 

     post '/conversations' do 
      new_convo = Conversation.create(
        topic: params[:topic]
      )
      new_convo.to_json
     end 
end 



