FactoryGirl.define do
  factory :musician do |m|
    m.name { Faker::Name.name }
    m.email { Faker::Internet.email }
    m.password { Faker::Internet.password(6) }

  end
end
