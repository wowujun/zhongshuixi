class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :tel
      t.text :content

      t.timestamps null: false
    end
  end
end
