require 'faker'
puts "🌱 Seeding spices..."
User.destroy_all
Conversation.destroy_all
Message.destroy_all

# Seed your database here
# luis=User.create({username: "luis", full_name: "Luis Escobar", email: "lae311@nyu.edu"})
# uno=Conversation.create(topic: "Dummy")
# Message.create(message: "I hate myself", user_id: luis.id, conversation_id: uno.id)

10.times do
    User.create( 
        username: Faker::Name.name, 
        full_name: Faker::Name.name, 
        email: Faker::Internet.email)
end

5.times do 
    Conversation.create(
        topic: Faker::ProgrammingLanguage.name)
end

5.times do
    Message.create(
        message: Faker::Quotes::Shakespeare.as_you_like_it_quote, 
        user_id: rand(33..43), 
        conversation_id: rand(8..13))
end