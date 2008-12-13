class Mailer < ActionMailer::Base
  

  def occasion_order(occasion_order_form, sent_at = Time.now)
    subject    'Mailer#occasion_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :occasion_order_form => occasion_order_form
  end

  def other_sample_order(sent_at = Time.now)
    subject    'Mailer#other_sample_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def program_order(sent_at = Time.now)
    subject    'Mailer#program_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def thank_you_order(sent_at = Time.now)
    subject    'Mailer#thank_you_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def wedding_sample_order(sent_at = Time.now)
    subject    'Mailer#wedding_sample_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
