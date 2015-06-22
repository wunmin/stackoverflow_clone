class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :responses
  has_many :votes
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end