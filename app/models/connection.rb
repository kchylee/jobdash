class Connection < ApplicationRecord
  belongs_to :event
  has_many :interviews, dependent: :destroy
  validates_presence_of :first_name, :last_name, :company, :job_title
end
