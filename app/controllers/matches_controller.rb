# /app/controllers/matches_controller.rb
class MatchesController < ApplicationController
  before_action :check, :set_match, only: [ :edit, :update, :show, :destroy ]

  def index
    @matches = current_user.matches.all
  end

  def new
    @match   = Match.new
    @words   = current_user.words.all
    @phrases = current_user.phrases.all
  end

  def create
    @match = current_user.matches.new(match_params)
    # @match[:user_id] = current_user.id
    @match[:word_id] = params[:match][:word][:id]
    @match[:phrase_id] = params[:match][:phrase][:id]
    if @match.save
      flash[:notice] = 'Match was successfully saved!'
      redirect_to matches_path
    else
      flash[:notice] = 'Not saved'
      redirect_to new_match_path
    end
  end

  def edit
    @words = current_user.words.all
    @phrases = current_user.phrases.all
    @note = @match.note
  end

  def update
    @match.update(word_id: params[:match][:word][:id])
    @match.update(phrase_id: params[:match][:phrase][:id])
    @match.update(note: params[:match][:note])
    redirect_to match_path
  end

  def show; end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path
  end

  def set_match
    @match = current_user.matches.find(params[:id])
  end

  private

  def match_params
    params.require(:match).permit(:user_id,
                                  :word_id,
                                  :phrase_id,
                                  :note) # submittable attribute in join table
  end
end
