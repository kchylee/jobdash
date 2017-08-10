require 'rails_helper'

RSpec.describe Application, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:interviews).dependent(:destroy) }
  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:job_title) }
  it { should validate_presence_of(:applied_at) }
end
