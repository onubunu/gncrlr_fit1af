class CreateTariffs < ActiveRecord::Migration
  def change
    create_table :tariffs do |t|
      t.string :t_name
      t.text :t_comment
      t.integer :netz_id
      t.integer :t_commission
      t.integer :t_profit
      t.text :t_info
      t.integer :t_costs

      t.timestamps
    end
  end
end
