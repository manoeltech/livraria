class Backoffice::RegistrationsController < Devise::RegistrationsController
  layout 'backoffice'
  before_action :authenticate_backoffice_user!
end