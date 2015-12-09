class CreateFollowIssues < ActiveRecord::Migration
  def change
    create_table :follow_issues do |t|
      t.string :user_id
      t.string :issue_id

      t.timestamps

    end
  end
end
