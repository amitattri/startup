class ApplicationMailer < ActionMailer::Base
  default from: 'test@startup.com'
  layout 'mailer'
end