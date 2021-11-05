class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :messages
  has_many :notifications

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
