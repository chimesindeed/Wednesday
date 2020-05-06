class WordsController < ApplicationController

  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end

  def create
  binding.pry #create method was called
  # Words creating / calling Letter and assigning (:words :letter_id) to (:letters :id)
    params[:word][:letter_id] = Letter.find_or_create_by(name: "#{params[:word][:name].first.downcase}").id
    if @word = Word.new(word_params).save
      flash[:notice] =  'Word was successfully saved!'
    else flash[:notice] = "Not saved" 
    @word = Word.new
    redirect_to new_word_path # redirect because if render cache doesn't clear and gets confusing
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
    params.require(:word).permit(:name, :letter_id)
  end

end
