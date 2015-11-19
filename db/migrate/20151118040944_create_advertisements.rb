class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :local
      t.string :content

      t.timestamps null: false
    end
  end
end
