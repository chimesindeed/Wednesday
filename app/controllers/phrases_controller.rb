class PhrasesController < ApplicationController
  
  #before_action :logged_in?
  #before_action :only_user, only: %i[show edit update destroy]
  def index
    @phrases = Phrase.all
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase[:user_id]=session[:user_id]
    if @phrase.save
      flash[:notice] =  'Phrase was successfully saved!'
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
    params.require(:phrase).permit(:name, :user_id)
  end
   def only_user
    @phrase = Phrase.find(params[:id])
    unless @phrase.user_id == current_user.id
        redirect_to '/', flash[:notice] => "Access denied."
    end
  end
 
end
