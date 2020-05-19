# /app/controllers words_controller.rb
class WordsController < ApplicationController
  before_action :check
  
  def index 
      @words = current_user.words.all
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word[:user_id] = current_user.id
    if @word.save
      flash[:notice] = 'Word was successfully saved!'
      redirect_to words_path
    else
      flash[:notice] = 'Not saved'
      redirect_to new_word_path
    end
  end

  def edit
    @word = current_user.words.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    @word.update(name: params[:word][:name])
    redirect_to words_path
  end

  def show
    @word = current_user.words.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end

  def word_params
    params.require(:word).permit(:name, :user_id)
  end

 
end