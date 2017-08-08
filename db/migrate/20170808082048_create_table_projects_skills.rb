class CreateTableProjectsSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :projects_skills do |t|
      t.belongs_to :skill, index: true
      t.belongs_to :project, index: true
    end
  end
end
