module ApplicationHelper
  def current_contact
    @contact ||= session[:contact_email]
  end
end
