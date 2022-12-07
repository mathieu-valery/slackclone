Message.all.destroy_all
User.all.destroy_all
Channel.all.destroy_all

User.create!([
    {email: "mathieuromainvalery@gmail.com", password: "123456789", first_name: "Mathieu", last_name: "Valery"},
    {email: "jg@gmail.com", password: "123456789", first_name: "Jean", last_name: "Guy"},
    {email: "elonmusk@gmail.com", password: "123456789", first_name: "Elon", last_name: "Musk"},
    {email: "abitbol@gmail.com", password: "123456789", first_name: "Georges", last_name: "Abitbol"},
    {email: "mathieuvalery@hotmail.fr", password: "123456789", first_name: nil, last_name: nil}
  ])
  Channel.create!([
    {name: "general"},
    {name: "paris"},
    {name: "react"}
  ])
  Message.create!([
    {user_id: User.first.id, channel_id: Channel.first.id, content: "hello chat"},
    {user_id: User.second.id, channel_id: Channel.first.id, content: "hey mate"},
    {user_id: User.second.id, channel_id: Channel.second.id, content: "hello paris channel"},
    {user_id: User.third.id, channel_id: Channel.third.id, content: "hello react channel"}
  ])
