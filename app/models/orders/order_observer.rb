class OrderObserver < ActiveRecord::Observer
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
      eval("Mailer.deliver_#{form.class.underscore}(form)")
    end
end
