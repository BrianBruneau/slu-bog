class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.create creature_params
    redirect_to creature_path creature
  end

  def show
    @creature = Creature.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
