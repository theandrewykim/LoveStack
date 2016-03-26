class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :responses, as: :responsible
  has_many :votes, as: :voteable
  has_many :tag_questions
  has_many :tags, through: :tag_questions

  validates :content, :title, :user, presence: true


  def vote_count
    self.votes.where(vote_status: true).length - self.votes.where(vote_status: false).length
  end

  # def voted(user)
  #   if self.votes.find_by(user_id: user.id) == nil
  #     vote = self.votes.create(voteable_id: self.id, user_id: user.id, voteable_type: true, vote_status: true)
  #   else
  #     question_to_vote = self.votes.find_by(user_id: user.id)
  #     question_to_vote.vote_status = !question_to_vote.vote_status
  #   end
  # end

end
