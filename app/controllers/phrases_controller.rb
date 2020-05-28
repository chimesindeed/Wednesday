class PhrasesController < ApplicationController
  before_action :check
  def index
    @phrases = current_user.phrases.all
  end

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase[:user_id] = current_user.id
    if @phrase.save
      flash[:notice] = 'Phrase was successfully saved!'
      redirect_to phrases_path
    else
      flash[:notice] = 'Not saved'
      redirect_to new_phrase_path
    end
  end

  def edit
    @phrase = current_user.phrases.find(params[:id])
  end

  def update
    @phrase = Phrase.find(params[:id])
    @phrase.update(name: params[:phrase][:name])
    redirect_to phrases_path
  end

  def show
    @phrase = current_user.phrases.find(params[:id])
  end

  def destroy
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to phrases_path
  end

  def phrase_params
    params.require(:phrase).permit(:name, :user_id)
  end
end
