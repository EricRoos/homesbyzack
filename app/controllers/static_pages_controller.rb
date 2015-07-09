class StaticPagesController < ApplicationController
  def contact_us
  end
  
  def submit_contact_us
    CustomMandrillMailer.contact_form(params[:name],params[:email],params[:message]).deliver
    flash[:info] = "Message succesfully sent"
    render :contact_us
  end

  def about_us
  end

  def services
  end
end
