class VotesController < ApplicationController

  def create
  # @question = Question.find(params[:voteable_id])

  #   if @question.votes.find_by(user_id: current_user.id)
  #     flash.now[:notice] = "You have already voted on this."
  #     @answers = @question.answers
  #     @answer = Answer.new
  #     @vote = Vote.new
  #     render 'questions/show'
  #   else
  # binding.pry
    my_vote = Vote.find_by(voteable_type: params[:voteable_type], voteable_id: params[:voteable_id], user_id: current_user.id)

# binding.pry
     if my_vote == nil
        vote = Vote.create(vote_params)
        redirect_to :back
      else
        my_vote.vote_status = params[:vote_status]
        my_vote.save
        redirect_to :back
      end
end

  private
   # def voted(user)

   #    if self.votes.find_by(user_id: user.id) == nil
   #      vote = self.votes.create(voteable_id: self.id, user_id: user.id, voteable_type: true, vote_status: true)
   #    else
   #      question_to_vote = self.votes.find_by(user_id: user.id)
   #      question_to_vote.vote_status = !question_to_vote.vote_status
   #    end
   #  end

  def vote_params
    params.permit(:voteable_type, :voteable_id, :vote_status).merge(user_id: current_user.id)
  end

end

#Possible to use string query to determine true or false
#google this for rails
