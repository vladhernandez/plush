class Mailer < ActionMailer::Base
  

  def contact_email(sent_at = Time.now)
    subject    'Mailer#contact_email'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def sample_request(product, sent_at = Time.now)
    subject    'Mailer#sample_request'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def order_email(product, sent_at = Time.now)
    subject    'Order Email'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :product => product
  end


end
