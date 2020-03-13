User.create(
  name: 'test',
  email: 'test@gmail.com',
  password: 'password'
)

30.times do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
end

Post.create(
  title: '東京タワー',
  description: '実際に自分の足で登ると思い出になるよ',
  image: open("#{Rails.root}/app/assets/images/posts/東京/1.jpg"),
  latitude: 35.658581,
  longitude: 139.745433,
  tag_list: '東京,タワー,絶景',
  user_id: 1
)