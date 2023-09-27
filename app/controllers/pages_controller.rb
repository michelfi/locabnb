class PagesController < ApplicationController
  # On ne veut pas que l'utilisateur soit connecté pour accéder à la page d'accueil
  before_action :authenticate_user!
  # Affiche la page d'accueil avec la liste des Pokémon

  def home
    @cars = Car.order(created_at: :desc).limit(3)
  end
end
