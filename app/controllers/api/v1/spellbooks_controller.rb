class Api::v1:SpellbooksController < ApplicationController

  before_action :set_spellbook, only: [:show, :update, :destroy]

  # def index 
   #is this necessary?
  # end

  def show
    render json: @spellbook
  end

  def create
    spellbook = Spellbook.new(spellbook_params)
    if spellbook.save
      render json: SpellbookSerializer.new(spellbook), status: :accepted
    else
      render json: { errors: spellbook.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def update 
    @spellbook.update(spellbook_params)
    if @spellbook.save
      render json: @spellbook, status: :accepted
    else
      render json: { errors: spellbook.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def destroy
    @spellbook.destroy
  end

  private

  def spellbook_params
    params.require(:spellbook).permit(:spell_id, :user_id)
  end

  def set_spellbook
    @spellbook = Spellbook.find(params[:id])
  end

end
