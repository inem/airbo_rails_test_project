class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
  # {
  #   "id": 9923,
  #   "created": 1389618241,
  #   "paid": true,
  #   "amount": 4900,
  #   "currency": "usd",
  #   "refunded": false,
  #   "customer_id" : 123
  # }
      t.integer :created
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id
      t.string :state

      t.timestamps
    end
  end
end
