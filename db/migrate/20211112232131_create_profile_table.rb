class CreateProfileTable < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.string :photo_url
      t.text :bio

      t.timestamps
    end
  end
end
