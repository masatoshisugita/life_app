class AddUserIdToProjects < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM projects;'
    add_reference :projects, :user, index: true
  end

  def down
    remove_reference :projects, :user, index: true
  end
end
