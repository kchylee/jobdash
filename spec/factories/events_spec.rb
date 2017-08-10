FactoryGirl.define do
    factory :event do
        name { Faker::Lorem.word }
        date { Faker::Date.between(10.days.ago, Date.today) }
        user_id nil
    end
end
