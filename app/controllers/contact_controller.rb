class ContactController < ApplicationController
  def create
    redirect_to(root_path, alert: "You have already sent a contact message") if current_contact
    ContactMailer.with(contact_email: params[:email], contact_message: params[:message], first_name: params[:first_name], last_name: params[:last_name]).deliver_later
    session[:contact_email] = params[:email]
    redirect_to root_path, notice: "Your message was sent. I will be in touch shortly"
  end
end