class User < ApplicationRecord
    has_many :applications, dependent: :destroy
    has_many :events, dependent: :destroy
    validates_presence_of :email, :first_name, :last_name, :password
end
