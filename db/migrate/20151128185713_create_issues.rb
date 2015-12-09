class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :source
      t.string :status

      t.timestamps

    end
  end
end
