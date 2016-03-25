class VotesController < ApplicationController
def create
 if params[:question_id]
  @vote = Vote.new()
elsif params[:answer_id]
end
end

#Possible to use string query to determine true or false
#google this for rails
