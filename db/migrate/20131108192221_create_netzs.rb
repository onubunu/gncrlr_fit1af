class CreateNetzs < ActiveRecord::Migration
  def change
    create_table :netzs do |t|
      t.string :n_name
      t.text :n_comment
      t.string :n_logo_url

      t.timestamps
    end
  end
end
