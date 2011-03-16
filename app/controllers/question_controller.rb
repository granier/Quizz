class QuestionController < ApplicationController
  def new
    @question = Question.new
  end

  def list
    @question = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      redirect_to :action => 'show', :id => @question
    else
      render :action => 'edit'
    end
  end

 def delete
    Question.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
