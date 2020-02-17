FactoryBot.define do
  factory :post do
    title {"hello!"}
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/back.jpeg')) }
    description {"hey"}
    user
  end
end