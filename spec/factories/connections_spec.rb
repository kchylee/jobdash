FactoryGirl.define do
    factory :connection do
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        company { Faker::Company.name }
        job_title { Faker::Job.title }
        event_id nil
    end
end