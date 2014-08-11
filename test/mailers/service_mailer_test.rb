require 'test_helper'

class ServiceMailerTest < ActionMailer::TestCase
  test "upcoming_service" do
    mail = ServiceMailer.upcoming_service
    assert_equal "Upcoming service", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "overdue_service" do
    mail = ServiceMailer.overdue_service
    assert_equal "Overdue service", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
