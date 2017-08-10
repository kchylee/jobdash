require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:connections).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:date) }
end
