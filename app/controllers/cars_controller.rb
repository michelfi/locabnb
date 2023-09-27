class CarsController < ApplicationController
  # Affiche la liste des voitures
  def index
    @cars = Car.all
  end

  # Affiche les détails d'une voiture
  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  # Affiche le formulaire de création d'un nouveau Pokémon
  def new
    @car = Car.new
  end

  # Crée un nouveau Pokémon
  def create
    @car = Car.new(pokemon_params)
    @car.user = current_user
    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_update_params)
      redirect_to @car
    else
      render :edit
    end
  end
end
