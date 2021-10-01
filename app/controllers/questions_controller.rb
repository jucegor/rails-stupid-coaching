class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def ask
  end

  def answer
    @your_message = params[:question]
    if @your_message.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @your_message != 'I am going to work right now!'
      @answer = 'I don\'t care, get dressed and go to work!'
    elsif @your_message == 'I am going to work right now!'
      @answer = 'Great!'
    end
  end
end
