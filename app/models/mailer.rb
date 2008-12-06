class Mailer < ActionMailer::Base
  

  def contact_email(sent_at = Time.now)
    subject    'Mailer#contact_email'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def sample_request(sent_at = Time.now)
    subject    'Mailer#sample_request'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
