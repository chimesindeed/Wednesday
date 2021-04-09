class PhrasesController < ApplicationController
 before_action :logged_in?, only: %i[show edit update destroy]
  
  def index
    @phrases = Phrase.where(user_id:  current_user.id)
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase[:user_id] = current_user.id
    
    if @word.save
      flash[:notice] =  'Word was successfully saved!'
      redirect_to phrases_path
    else
      flash[:notice] = "Not saved" 
      redirect_to new_phrase_path
    end
    
  end
  
  def edit
  end

  def update  
    @phrase.update(name: params[:phrase][:name])
    redirect_to phrases_path
  end

  def show
  end

  def destroy
    @phrase.destroy
    redirect_to phrases_path
  end

  def phrase_params
    params.require(:phrase).permit(:name)
  end

  def logged_in?
    @phrase = Phrase.find(params[:id])
    unless @phrase.user_id == current_user.id
      redirect_to '/', flash[:notice] => "Access denied."
    end
  end

end