class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.references :property, null: false, foreign_key: true
      t.integer :value
      t.text :opinion
      t.string :user_name

      t.timestamps
    end
  end
end
