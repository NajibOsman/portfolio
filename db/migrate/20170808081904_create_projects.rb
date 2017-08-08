class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.text :github


      t.timestamps
    end
  end
end
