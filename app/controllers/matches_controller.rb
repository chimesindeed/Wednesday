class MatchesController < ApplicationController
  def index
  end

  def new
    @words = Word.all
    @phrases = Phrase.all
  end

  def create
  end

  def show
  end

  def destroy
  end
end
