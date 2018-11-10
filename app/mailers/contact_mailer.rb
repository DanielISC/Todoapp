class ContactMailer < ApplicationMailer
  default from: "<Todo@mail.com>"

  def
    contact_send(params)
    @parameters = params mail(to: params.email ,subject:  @parameters[:subject])
  end
end
