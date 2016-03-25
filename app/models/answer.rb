class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :responses, as: :responsible
  has_many :votes, as: :voteable

  validates :content, :user, :question, :best, presence: true
end
