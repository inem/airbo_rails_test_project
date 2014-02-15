class User < ActiveRecord::Base
  has_many :charges, :foreign_key => 'customer_id'
end
