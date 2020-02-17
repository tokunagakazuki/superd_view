FactoryBot.define do

  factory :user do
    name              {"toc"}
    # sequence(:name) { |n| "test#{n}"}
    # email                 {"kkk@gmail.com"}
    password              {"00000000"}
    # password_confirmation {"00000000"}
    sequence(:email) {Faker::Internet.email}
  end

end