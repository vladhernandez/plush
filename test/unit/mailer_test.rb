require 'test_helper'

class MailerTest < ActionMailer::TestCase
  tests Mailer
  def test_contact_email
    @expected.subject = 'Mailer#contact_email'
    @expected.body    = read_fixture('contact_email')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_contact_email(@expected.date).encoded
  end

  def test_sample_request
    @expected.subject = 'Mailer#sample_request'
    @expected.body    = read_fixture('sample_request')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_sample_request(@expected.date).encoded
  end

end
