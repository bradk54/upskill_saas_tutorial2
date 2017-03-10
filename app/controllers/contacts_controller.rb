class ContactsController < ApplicationController
  
  #GEt request for /routes
  #show new contact form
  
  def new
    @contact = Contact.new 
  end
  
  #POST request/contacts
  
  def create
    #mass assignment of form fields into contact object
    @contact = Contact.new(contact_params)
    #save contact object to database
    if @contact.save
      #store form fields via parameters, store to variables
      name = params[:contacts][:name]
      email = params[:contacts][:email]
      body = params[:contacts][:comments]
      #plug variables into contactmailer
      #email method and send mail
      ContactMailer.contact_email(name, email, body).deliver
      #display success message
      flash[:success] = "Message Sent!"
      #redirect to new contact action
      redirect_to new_contact_path
    else
      #if contact object doesn't save
      #store errors in flash hash
      flash[:danger] = @contact.errors.full_messages.join(", ")
      #redirect to new path after error
      redirect_to new_contact_path
    end
  end
  private 
    #to collect data from form, we need to use strong
    #parameters.  And white list form fields
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end