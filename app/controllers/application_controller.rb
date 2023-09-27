class ApplicationController < ActionController::Base
  # On veut que l'utilisateur soit connecté pour accéder à toutes les pages
  before_action :authenticate_user!

  private

  # Définit l'utilisateur actuellement connecté
  def set_current_user
    @current_user = current_user
  end
end
