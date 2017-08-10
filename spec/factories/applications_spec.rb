FactoryGirl.define do
    factory :application do
        company { Faker::Company.name }
        job_title { Faker::Job.title }
        applied_at { Faker::Date.between(14.days.ago, Date.today) }
        user_id nil
    end
end