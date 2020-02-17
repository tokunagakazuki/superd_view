FactoryBot.define do
  factory :post do
    title {"hello!"}
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/test_image.jpg')) }
    
    description {"hey"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end