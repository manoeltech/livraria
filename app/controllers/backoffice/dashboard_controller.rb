class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_backoffice_user!

  def home
  end
end