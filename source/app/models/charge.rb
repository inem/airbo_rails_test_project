class Charge < ActiveRecord::Base
  belongs_to :customer, :class_name => "User"

  def real_amount
    amount/100.0
  end
end
