class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 10 }, uniqueness: true
  validates :email, presence: true,uniqueness: true,format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6, maximum: 16 }
end
