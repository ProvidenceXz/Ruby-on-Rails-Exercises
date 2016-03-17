class PokemonsController < ApplicationController
  
  def new
    @pokemon = Pokemon.new
  end
  
  def create
    @pokemon = Pokemon.new(:name => params[:pokemon][:name])
    @pokemon.update_attributes(:level => 1, :health => 100, :trainer => current_trainer)
    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render :new
    end
  end
  
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.update_attribute(:trainer, current_trainer)
    pokemon.save!
    redirect_to '/'
  end
  
  def damage
    pokemon = Pokemon.find(params[:id])
    if pokemon.health - 10 == 0
      pokemon.destroy!
    else
      pokemon.update_attribute(:health, pokemon.health - 10)
      pokemon.save!
    end
    redirect_to trainer_path(current_trainer.id)
  end
  
end