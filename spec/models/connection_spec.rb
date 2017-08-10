require 'rails_helper'

RSpec.describe Connection, type: :model do
  it { should belong_to(:event) }
  it { should have_many(:interviews) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:job_title) }

end
