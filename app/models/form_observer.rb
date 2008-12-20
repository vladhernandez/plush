class FormObserver < ActiveRecord::Observer
    # Declare Models to observe
    observe :favour_tag_label_order, 
            :invite_order, 
            :occasion_order, 
            :other_sample_order, 
            :program_order, 
            :save_date_order, 
            :thank_you_order, 
            :wedding_sample_order
  
    # This fires everytime a new model is created
    def after_create(form)
      # use the model name to infer the mailer method
      # this creates and fires the email created by Mailer
      # email config details are in enviroment.rb
      eval("Mailer.deliver_#{form.class.underscore}")
    end
end
