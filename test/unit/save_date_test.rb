require 'test_helper'

class SaveDateTest < ActiveSupport::TestCase

  should "send an email after it is saved" do
    @order = SaveDate.new
    @order.save
    assert_sent_email
  end

end
