class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :responses
  has_many :votes
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  def self.authenticate(username, password)
    @user = User.find_by_username(username)
    if @user == []
      nil
    elsif @user.password == password
      @user
    else
      nil
    end
  end

end
