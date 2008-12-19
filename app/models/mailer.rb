class Mailer < ActionMailer::Base
  

  def occasion_order(occasion_order_form, sent_at = Time.now)
    subject    'Mailer#occasion_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :occasion_order_form => occasion_order_form
  end

  def other_sample_order(other_sample_order, sent_at = Time.now)
    subject    'Mailer#other_sample_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :other_sample_order => other_sample_order
  end

  def program_order(program_order, sent_at = Time.now)
    subject    'Mailer#program_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :program_order => program_order
  end

  def thank_you_order(thank_you_order, sent_at = Time.now)
    subject    'Mailer#thank_you_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :thank_you_order => thank_you_order
  end

  def wedding_sample_order(wedding_sample_order, sent_at = Time.now)
    subject    'Mailer#wedding_sample_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :wedding_sample_order => wedding_sample_order
  end

  def invite_order(invite_order, sent_at = Time.now)
    subject    'Mailer#invite_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :invite_order => invite_order
  end

  def save_date(save_date, sent_at = Time.now)
    subject    'Mailer#save_date'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :save_date => save_date
  end

  def favour_tab_label_order(favour_tab_label_order, sent_at = Time.now)
    subject    'Mailer#favour_tab_label_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :favour_tab_label_order => favour_tab_label_order
  end

end
