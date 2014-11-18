class ServiceMailer < ActionMailer::Base

  default from: "fleetmanagement@americanfire.com"

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

    mail to: user
  end

  def notify_mechanic(user, vehicle, properties)
    @user = user
    @vehicle = vehicle
    @properties = properties
    mail to: "nicks@americanfire.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.service_mailer.overdue_service.subject
  #
  def notify_driver(user, vehicle, services)
    @overdue_service = services[:overdue]
    @upcoming_service = services[:upcoming]
    @vehicle = vehicle
    @user = user
    @greeting = "Hi"
    p @overdue_service
    mail to: user
  end
end
