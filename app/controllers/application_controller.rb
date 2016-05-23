class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: 'Unauthorized access' }
      format.xml { render :xml => "...", :status => :forbidden }
      format.json { render json: '{"status": "Unauthorized access"}', status: :unprocessable_entity }
    end
  end
end
