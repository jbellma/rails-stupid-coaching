class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I do not care, get dressed and go to work!']

    if @question == 'I am going to work'
      @coach_answer = @answers[0]
    elsif @question.end_with?('?')
      @coach_answer = @answers[1]
    else
      @coach_answer = @answers[2]
    end
  end
end
