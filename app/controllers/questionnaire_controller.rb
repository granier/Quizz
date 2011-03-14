class QuestionnaireController < ApplicationController
 def new
    @questionnaire = Questionnaire.new
  end

  def list
    @questionnaire = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def create
    @questionnaire = Questionnaire.new(params[:questionnaire])
    if @questionnaire.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])
    if @questionnaire.update_attributes(params[:questionnaire])
      redirect_to :action => 'show', :id => @questionnaire
    else
      render :action => 'edit'
    end
  end

  def delete
    Questionnaire.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def destroy
    Questionnaire.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
