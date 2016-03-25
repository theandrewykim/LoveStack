class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :responses, as: :responsible
  has_many :votes, as: :voteable
  has_many :tags, through: :tag_questions

  validates :content, :title, :user, presence: true
end
