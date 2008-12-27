class OrderObserver < ActiveRecord::Observer
  
    # Observers need to be enabled in environment.rb
    # config.active_record.observers = :order_observer
  
    # Declare Models to observe
    observe :favour_tag_label, 
            :invite, 
            :occasion, 
            :other_sample, 
            :program, 
            :save_date, 
            :thank_you, 
            :wedding_sample
  
    # This fires everytime a new model is created
    def after_create(form)
      # use the model name to infer the mailer method
      # this creates and fires the email created by Mailer
      # email config details are in enviroment.rb
      eval("Mailer.deliver_#{form.class.name.underscore}(form)")
    end
end
