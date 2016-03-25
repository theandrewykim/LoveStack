class Question < ActiveRecord::Base
  belongs_to :user
  has_many :responses, as: :responsible
  has_many :votes, as: :voteable

  validates :content, :title, :user, presence: true
end
