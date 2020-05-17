class LettersController < ApplicationController
  expose :letters, -> {Letter.all}
  expose :letter
  def index
    @letters = letters
  end
  
  def show
    @letter = letter.name
  end
end
