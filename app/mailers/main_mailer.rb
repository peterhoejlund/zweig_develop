class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.welcome_mail.subject
  #
  def welcome_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
