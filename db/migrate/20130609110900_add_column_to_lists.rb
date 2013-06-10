class AddColumnToLists < ActiveRecord::Migration
  def change
    change_table :lists do |t|
      t.string :description

    end
  end
end
