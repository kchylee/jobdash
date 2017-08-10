class Event < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  validates_presence_of :name, :date
end
