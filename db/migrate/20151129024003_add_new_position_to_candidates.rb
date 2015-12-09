class AddNewPositionToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :new_position, :string
  end
end
