FactoryGirl.define do
  factory :post do
    title Faker::Lorem.words(5).map!{|x|x.capitalize}.join(" ")
    body Faker::Lorem.paragraphs(3).join(" ")
    author Faker::Name.name
  end	
end