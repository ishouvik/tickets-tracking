class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :check_if_user_has_admin_role!

  layout 'admin/layouts/application'

  def check_if_user_has_admin_role!
    unless (current_user.has_role? :admin)
      redirect_to root_path, alert: "Access denied."
    end
  end
end
