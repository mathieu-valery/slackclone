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
    {user_id: 1, channel_id: 1, content: "hello chat"},
    {user_id: 2, channel_id: 1, content: "hey mate"},
    {user_id: 2, channel_id: 2, content: "hello paris channel"},
    {user_id: 3, channel_id: 3, content: "hello react channel"}
  ])
