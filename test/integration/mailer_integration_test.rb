require "#{File.dirname(__FILE__)}/../test_helper"

class MailerIntegrationTest < ActionController::IntegrationTest
  should "send an email after order is created" do
    order = SaveDate.create
    Mailer.deliver_save_date(order)
    assert_sent_email
    # assert_sent_email do |email|
    #    email.subject =~ /hi there/ && email.to.include?('none@none.com')
    # end
  end
end