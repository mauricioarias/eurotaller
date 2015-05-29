class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @contenido ||= Contenido.all
    @nombre ||= Nombre.all
  end

  def create
    @contenido ||= Contenido.all
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      #flash.now[:notice] = 'gracias'
      redirect_to contacts_path
    else
      flash.now[:error] = 'no  pudo ser enviado'
      render :new
    end
  end
end