class CreateReferals < ActiveRecord::Migration[5.1]
  def change
    create_table :referals do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
