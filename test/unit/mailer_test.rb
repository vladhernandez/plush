require 'test_helper'

class MailerTest < ActionMailer::TestCase
  tests Mailer
  def test_occasion_order
    @expected.subject = 'Mailer#occasion_order'
    @expected.body    = read_fixture('occasion')
    @expected.date    = Time.now

    # assert_equal @expected.encoded, Mailer.create_occasion_order(OccasionOrder.new, @expected.date).encoded
  end

  def test_other_sample
    @expected.subject = 'Mailer#other_sample'
    @expected.body    = read_fixture('other_sample')
    @expected.date    = Time.now

    # assert_equal @expected.encoded, Mailer.create_other_sample(OtherSampleOrder.new, @expected.date).encoded
  end

  def test_program_order
    @expected.subject = 'Mailer#program_order'
    @expected.body    = read_fixture('program')
    @expected.date    = Time.now

    # assert_equal @expected.encoded, Mailer.create_program_order(ProgramOrder.new, @expected.date).encoded
  end

  def test_thank_you_order
    @expected.subject = 'Mailer#thank_you_order'
    @expected.body    = read_fixture('thank_you')
    @expected.date    = Time.now

    # assert_equal @expected.encoded, Mailer.create_thank_you_order(ThankYouOrder.new, @expected.date).encoded
  end

  def test_wedding_sample
    @expected.subject = 'Mailer#wedding_sample'
    @expected.body    = read_fixture('wedding_sample')
    @expected.date    = Time.now

    # assert_equal @expected.encoded, Mailer.create_wedding_sample(WeddingSampleOrder.new, @expected.date).encoded
  end

end
