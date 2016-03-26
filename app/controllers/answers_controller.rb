class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    if @answer.save
      flash[:notice] = "Your question was posted!"
      redirect_to @question
    else
      flash.now[:notice] = "Your question was not posted correct."
      # @question = Question.new
      render "questions/show"
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def update
    @answer =  Answer.find(params[:id])
    @question = Question.find(params[:question_id])

    if @answer.update(answer_params)
      redirect_to question_path(@question)
    else
      flash.now[:notice] = "Your edit did not work."
       redirect_to question_path(@question)

    end
   end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:notice] = "You deleted your answer!"
    redirect_to @answer.question
  end

  private
  def answer_params
    params.require(:answer).permit(:content, :question_id).merge(user_id: current_user.id)
  end

end