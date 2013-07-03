5.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Name.first_name)
end

User.all.each do |user|
  3.times do
    Post.create(user_id: user.id, url: Faker::Internet.domain_name, title: Faker::Company.catch_phrase)
  end
end

10.times do
  Comment.create(content: Faker::Lorem.sentences(sentence_count = 2), user_id: (rand(5) +1), post_id: (rand(15)+1)  )
end
