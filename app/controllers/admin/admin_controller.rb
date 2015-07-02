class Admin::AdminController < ApplicationController
  before_filter :require_admin

  protected

  def require_admin
    if !current_user || (current_user && !current_user.is_admin)
      redirect_to root_path
    end
  end
end
