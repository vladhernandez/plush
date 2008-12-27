class Mailer < ActionMailer::Base
  

  def occasion_order(occasion, sent_at = Time.now)
    subject    'Mailer#occasion_order'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :occasion => occasion
  end

  def other_sample(other_sample, sent_at = Time.now)
    subject    'Mailer#other_sample'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :other_sample => other_sample
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

  def wedding_sample(wedding_sample, sent_at = Time.now)
    subject    'Mailer#wedding_sample'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :wedding_sample => wedding_sample
  end

  def invite(invite, sent_at = Time.now)
    subject    'Mailer#invite'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :invite => invite
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
