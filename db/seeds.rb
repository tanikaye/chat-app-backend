require 'faker'
puts "🌱 Seeding spices..."
User.destroy_all
Conversation.destroy_all
Message.destroy_all

# Seed your database here
# luis=User.create({username: "luis", full_name: "Luis Escobar", email: "lae311@nyu.edu"})
# uno=Conversation.create(topic: "Dummy")
# Message.create(message: "I hate myself", user_id: luis.id, conversation_id: uno.id)

#Create 8 users 
user1 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user2 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user3 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user4 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user5 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user6 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user7 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)
user8 = User.create( username: Faker::Name.name, full_name: Faker::Name.name, email: Faker::Internet.email)


#create 5 conversations/topics
c1 = Conversation.create(topic: Faker::ProgrammingLanguage.name)
c2 = Conversation.create(topic: Faker::ProgrammingLanguage.name)
c3 = Conversation.create(topic: Faker::ProgrammingLanguage.name)
c4 = Conversation.create(topic: Faker::ProgrammingLanguage.name)
c5 = Conversation.create(topic: Faker::ProgrammingLanguage.name)

#create 10 messages
m1 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c1.id)
m2 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c1.id)
m3 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user2.id, conversation_id: c1.id)
m4 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c2.id)
m5 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user3.id, conversation_id: c2.id)
m6 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c3.id)
m6 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user2.id, conversation_id: c3.id)
m7 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user4.id, conversation_id: c3.id)
m8 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c4.id)
m9 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user1.id, conversation_id: c5.id)
m10 = Message.create(message: Faker::Hacker.say_something_smart, user_id: user5.id, conversation_id: c5.id)