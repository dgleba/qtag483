class HoldtagMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.holdtag_mailer...subject
  #
  def .
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
