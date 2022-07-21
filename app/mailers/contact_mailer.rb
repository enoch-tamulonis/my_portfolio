class ContactMailer < ApplicationMailer
  def new_contact
    @contact_email = params[:contact_email]
    @contact_name = [params[:first_name], params[:last_name]].join(" ")
    @message = params[:message]
    mail(to: MY_EMAIL, from: @contact_email)
  end
end
