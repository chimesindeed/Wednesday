# /app/controllers/words_controller.rb
class WordsController < ApplicationController
  before_action :check
  
  def index 
    @words = current_user.words.order_words # scope method querying database directly instead of pulling into model object and doing
                                     # .each do. Faster.  Thought of putting button in view to sort but in html/erb
                                     # button would call another controller method where I'd be doing the same thing.
                                     # and then throwing back to the same view with sorted words list.
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