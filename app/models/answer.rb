class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :responses, as: :responseable
  has_many :votes, as: :voteable
  validates :description, presence: true
  validates :best, uniqueness: { scope: :question }
end
