FactoryGirl.define do
    factory :interview do
        date { Faker::Date.between(7.days.ago, Date.today) }
        stage { Faker::Lorem.word }
        application_id nil
        connection_id nil
    end
end