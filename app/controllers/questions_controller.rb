class QuestionsController < ApplicationController
  before_action :authenticate_user!
  

  def index
    @questions = current_user.questions
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      flash[:notice] = "Your question has been added."
      redirect_to questions_url
    else
      flash[:notice] = "Your question has not been added."
      redirect_to new_question_url
    end
  end

  def edit
    @question = current_user.questions.find_by(id: params[:id])
  end

  def update
    @question = current_user.questions.find_by(id: params[:id])
    @question.update_attributes(question_params)
    redirect_to questions_url

  end

  def destroy
    @question = current_user.questions.find_by(id: params[:id])
    @question.destroy
    redirect_to questions_url
  end

  private

    def question_params
      params.require(:question).permit(:question)
    end


end
