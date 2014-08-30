class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :email
      t.string :password_digest
      t.string :title
      t.string :prename
      t.string :surname
      t.datetime :birth_date
      t.string :street
      t.string :zip
      t.string :city
      t.string :bank
      t.integer :bankzip
      t.integer :bankaccount

      t.timestamps
    end
  end
end
