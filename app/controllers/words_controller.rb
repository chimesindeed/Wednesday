# /app/controllers/words_controller.rb
class WordsController < ApplicationController
  before_action :check, :set_word, only: [ :edit, :update, :show, :destroy ]

  def index
    @words = current_user.words.order_words
  end

  def new
    @word = Word.new
  end

  def create
    @word = current_user.words.new(word_params)
    # @word[:user_id] = current_user.id
    if @word.save
      flash[:notice] = 'Word was successfully saved!'
      redirect_to words_path
    else
      flash[:notice] = 'Not saved'
      redirect_to new_word_path
    end
  end

  def edit; end

  def update
    @word.update(name: params[:word][:name])
    redirect_to words_path
  end

  def show; end

  def destroy
    @word.destroy
    redirect_to words_path
  end

  def set_word
    @word = current_user.words.find(params[:id])
  end

  private

  def word_params
    params.require(:word).permit(:name, :user_id)
  end
end
