class Mailer < ActionMailer::Base
  
  def email_recipients
    'aaron@aaronglenn.ca'
  end
  
  def email_from
    'plush@plush.com'
  end

  def occasion(occasion, sent_at = Time.now)
    subject    'Occasion Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :occasion => occasion
  end

  def other_sample(other_sample, sent_at = Time.now)
    subject    'Other Sample Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :other_sample => other_sample
  end

  def program(program, sent_at = Time.now)
    subject    'Program Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :program => program
  end

  def thank_you(thank_you, sent_at = Time.now)
    subject    'Thank You Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :thank_you => thank_you
  end

  def wedding_sample(wedding_sample, sent_at = Time.now)
    subject    'Wedding Sample Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :wedding_sample => wedding_sample
  end

  def invite(invite, sent_at = Time.now)
    subject    'Invite Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :invite => invite
  end

  def save_date(save_date, sent_at = Time.now)
    subject    'Save The Date Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :save_date => save_date
  end

  def favour_tag_label(favour_tag_label, sent_at = Time.now)
    subject    'Favour Tag / Label Order'
    recipients email_recipients
    from       email_from
    sent_on    sent_at
    
    body       :favour_tag_label => favour_tag_label
  end

end
