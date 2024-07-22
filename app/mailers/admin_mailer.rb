class AdminMailer < ApplicationMailer
  default from: 'irtezahussain04@gmail.com'

  def welcome_mail
    @admin = params[:admin]
    @url = 'localhost:3002/admin/new'
    mail(to:@admin.email, subject: 'You just logged in the ims with this email' )
  end
end
