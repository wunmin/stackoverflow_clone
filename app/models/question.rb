class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :responses, as: :responseable
  has_many :votes, as: :voteable
  validates :title, length: { maximum: 100 }
end
