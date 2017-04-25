class ApplicationMailer < ActionMailer::Base
  default from: @user.email
  layout 'mailer'
end
