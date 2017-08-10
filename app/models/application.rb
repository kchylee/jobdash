class Application < ApplicationRecord
  belongs_to :user
  has_many :interviews, dependent: :destroy
  validates_presence_of :company, :job_title, :applied_at
end
