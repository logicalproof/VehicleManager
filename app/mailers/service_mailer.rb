class ServiceMailer < ActionMailer::Base
  default from: "americanfire@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_mailer.upcoming_service.subject
  #
  def upcoming_service(user, vehicle, service)
    @service = service
    @vehicle = vehicle
    @user = user
    @greeting = "Hi"

    mail to: user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_mailer.overdue_service.subject
  #
  def overdue_service(user, vehicle, service)
    @service = service
    @vehicle = vehicle
    @user = user
    @greeting = "Hi"

    mail to: user.email
  end
end
