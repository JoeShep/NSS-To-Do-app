class AddColumnToTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.integer :done
    end
  end
end
