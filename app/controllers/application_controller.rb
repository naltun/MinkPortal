class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #require 'DatePickerInput'
  
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  protected

  def configure_devise_permitted_parameters
    registration_params = [:email, :password, :password_confirmation, :role, :first_name, :last_name, :fishery_trust_name, :contact_code, :organisation, :role_in_org, :phone_landline, :phone_mobile, :street_address, :postcode, :city, :forms_signed, :report_sightings, :receives_newsletter_only, :monitor, :trapper, :dispatcher, :landowner, :peer, :num_of_rafts_given, :num_of_traps_given, :own_traps, :coordinating_org, :start_date, :end_date, :newsletter, :own_carcass_storage, :how_heard_of_smi, :comments, :estate_name, :land_access_notes, :access_granted, :date_access_granted, :end_date_access, :share_data, :trap_codes]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
      
   elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

	rescue_from CanCan::AccessDenied do |exception|
	  flash[:error] = "Access denied."
	  redirect_to root_url
	end
end
