class RemoveListIdFromTasks < ActiveRecord::Migration
  def change
    remove_column(:tasks, :list_id)
  end
end
