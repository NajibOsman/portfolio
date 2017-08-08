class AddCountToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column(:projects,:views,:integer,default:0)
    add_column(:skills,:views,:integer,default:0)
  end
end
