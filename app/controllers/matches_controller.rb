# /app/controllers/matches_controller.rb
class MatchesController < ApplicationController
  before_action :check
  
  def index
    @matches = current_user.matches.all
  end

  def new
    @match = Match.new
    @words = current_user.words.all
    @phrases = current_user.phrases.all
  end

  def create
    @match = Match.new(match_params)
    @word = current_user.words.find(params[:word_id])
    @phrase = current_user.phrases.find(params[:phrase_id])
    @match[:user_id] = current_user.id
# binding.pry #
    if @match.save
      flash[:notice] = 'Match was successfully saved!'
      redirect_to root_path
    else
      flash[:notice] = 'Not saved'
      redirect_to new_match_path
    end
  end

  def show
  end

  def destroy
  end

  def match_params
    params.require(:match).permit(:degree,
                                  :user_id,
                                  :word_id,
                                  :phrase_id)
  end
end
