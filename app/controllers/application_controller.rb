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

  get "/conversations/:id/messages" do
    msg=Conversation.find(params[:id]).messages
    msg.to_json
  end
  # get "/conversations/" do
  #   msg=Conversation.a
  #   msg.to_json
  # end

  delete '/users/:id' do
    rm_user= Users.find(params[:id])
    rm_user.destroy
    rm_user.to_json
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
end 



