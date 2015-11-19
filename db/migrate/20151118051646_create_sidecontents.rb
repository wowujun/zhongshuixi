class CreateSidecontents < ActiveRecord::Migration
  def change
    create_table :sidecontents do |t|
      t.integer :sidecla_id
      t.string :title
      t.string :inpaper
      t.text :content
      t.timestamp :time
      t.integer :admin_id

      t.timestamps null: false
    end
  end
end
