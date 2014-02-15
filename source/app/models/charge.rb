class Charge < ActiveRecord::Base
  belongs_to :customer

  scope :failed, -> { where(state: 'failed') }
  scope :disputed, -> { where(state: 'disputed') }
  scope :successful, -> { where(state: 'successful') }

  def real_amount
    amount/100.0
  end
end
