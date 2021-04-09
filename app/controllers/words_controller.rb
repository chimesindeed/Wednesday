class WordsController < ApplicationController

  #before_action :logged_in?
  before_action :logged_in?, only: %i[show edit update destroy]
  def index
    @words = Word.all  
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word[:user_id] = session[:user_id]
    
    if @word.save
      flash[:notice] =  'Word was successfully saved!'
      redirect_to words_path
    else
      flash[:notice] = "Not saved" 
      redirect_to new_word_path
      end 
  end
  
  def edit
  end

  def update  
    @word.update(name: params[:word][:name])
    redirect_to words_path
  end

  def show
    end

  def destroy
    @word.destroy
    redirect_to words_path
  end

  def word_params
    params.require(:word).permit(:name)
  end

  def logged_in?
    @word = Word.find(params[:id])
    unless @word.user_id == current_user.id
        redirect_to '/', flash[:notice] => "Access denied."
    end
  end

end
