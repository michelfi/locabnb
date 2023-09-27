class BookingsController < ApplicationController
  # Affiche toutes les réservations de l'utilisateur connecté
  def index
    car_id = params[:car_id] # Vous devez avoir une méthode pour obtenir l'ID de la voiture à partir des réservations.

    # Redirigez vers la page de détail de la voiture en question.
    if car_id
      redirect_to car_path(car_id)
    else
      redirect_to root_path, alert: 'Voiture introuvable.'
    end
  end

  # Affiche le formulaire de réservation pour un nouvelle location
  def new
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.build
  end

  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end

  # Crée une nouvelle réservation pour une voiture
  def create
    @car = Car.find(params[:booking][:car_id])
    @booking = Booking.new(booking_params)

    @booking.user = current_user # Si vous avez un utilisateur associé à la réservation

    if @booking.save
      redirect_to @booking.car, notice: "Réservation créée avec succès."
    else
      render 'cars/show', alert: "La réservation n'a pas pu être créée."
    end
  end

  # Supprime une réservation
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: 'Réservation annulée ! Nous prévenons le dresseur.'
  end

  private

  # Définit les paramètres autorisés pour la réservation
  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :car_id)
  end
end
