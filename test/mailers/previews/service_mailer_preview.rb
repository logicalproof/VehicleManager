# Preview all emails at http://localhost:3000/rails/mailers/service_mailer
class ServiceMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/service_mailer/upcoming_service
  def upcoming_service
    ServiceMailer.upcoming_service
  end

  # Preview this email at http://localhost:3000/rails/mailers/service_mailer/overdue_service
  def overdue_service
    ServiceMailer.overdue_service
  end

end
