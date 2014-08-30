class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :tariff_id
      t.string :phone_id
      t.integer :o_price
      t.datetime :o_date
      t.string :order_no
      t.string :bank
      t.integer :bankzip
      t.integer :bankaccount
      t.boolean :agbs

      t.timestamps
    end
  end
end
