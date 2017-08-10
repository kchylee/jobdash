class Interview < ApplicationRecord
  belongs_to :application
  belongs_to :connection
  validates_presence_of :date, :stage
end
