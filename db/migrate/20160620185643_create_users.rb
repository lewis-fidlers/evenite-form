class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone
      t.string :type
      t.string :email
      t.string :vat
      t.boolean :pa_system
      t.boolean :garden
      t.boolean :wifi
      t.text :extra_info
      t.boolean :own_drinks
      t.boolean :own_drinks_mandatory
      t.boolean :parking
      t.integer :person_capacity
      t.integer :parking_spaces
      t.string :venue_type
      t.string :genre
      t.float :years_experience
      t.text :references
      t.string :artist_type

      t.timestamps null: false
    end
  end
end
