class Contact < MailForm::Base
  attribute :nombre,      :validate => true
  attribute :correo,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :mensaje
  attribute :ciudad
  attribute :taller

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contacto Eurotaller",
      :to => "info@eurotaller.co",
      :from => %("#{nombre}" <#{correo}>)
    }
  end
end
