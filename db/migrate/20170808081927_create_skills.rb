class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.text :name
      t.float :level
      t.text :description

      t.timestamps
    end
  end
end
