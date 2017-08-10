require 'rails_helper'

RSpec.describe Interview, type: :model do
  it { should belong_to(:application) }
  it { should belong_to(:connection) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:stage) }
end
