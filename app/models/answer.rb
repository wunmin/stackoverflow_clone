class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :responses, as: :responseable
  has_many :votes, as: :voteable
  validates :description, presence: true
  validate :only_one_best_answer
  # validates :best, uniqueness: { scope: :question }

  private
    def only_one_best_answer
      if best == true && best_changed? && question.answers.where(best: true).present?
        errors.add(:best, "cannot have more than one best")
      end
    end

end
