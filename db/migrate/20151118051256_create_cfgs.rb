class CreateCfgs < ActiveRecord::Migration
  def change
    create_table :cfgs do |t|
      t.string :sale_tel
      t.string :email
      t.string :company_name
      t.string :address
      t.text :content

      t.timestamps null: false
    end
  end
end
