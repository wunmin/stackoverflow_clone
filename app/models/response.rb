class Response < ActiveRecord::Base
  belongs_to :responseable, polymorphic: true
  has_many :votes, as: :voteable
  validates :description, presence: true
  validates :user_id, presence: true
end