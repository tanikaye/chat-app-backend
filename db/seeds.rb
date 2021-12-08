require 'faker'
puts "🌱 Seeding spices..."

# Seed your database here
# luis=User.create({username: "luis", full_name: "Luis Escobar", email: "lae311@nyu.edu"})
# uno=Conversation.create(topic: "Dummy")
# Message.create(message: "I hate myself", user_id: luis.id, conversation_id: uno.id)

10.times do
    User.create({username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email})
end
