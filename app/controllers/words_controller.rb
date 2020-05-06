class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
  binding.pry #create method was called
    if @word = Word.new(word_params).save
      flash[:notice] =  'Word was successfully saved!'
    else flash[:notice] = "Not saved" 
    @word = Word.new
    render new_word_path
    binding.pry
    end
    
  end
  
  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  def word_params
    params.require(:word).permit(:name)
  end

end
