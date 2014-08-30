class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :p_typ
      t.string :p_brand
      t.text :p_comment
      t.integer :p_price
      t.string :p_image_url

      t.timestamps
    end
  end
end
