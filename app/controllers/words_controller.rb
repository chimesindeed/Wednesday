class WordsController < ApplicationController

  before_action :logged_in?
  before_action :set_word, only: %i[show edit update destroy]
  def index
    @words = Word.where(user_id: session[:user_id])
    
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
    @word = Word.find(params[:id])
  end

  def update  
    @word = Word.find(params[:id])
    @word.update(name: params[:word][:name])
    redirect_to words_path
  end

  def show
    @word = Word.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  def word_params
    params.require(:word).permit(:name)
  end
  def set_word
    @word = Word.find(params[:id])
  end

end
