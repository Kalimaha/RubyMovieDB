class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :country

      t.timestamps null: false
    end
  end
end
