class CreateTagIssues < ActiveRecord::Migration
  def change
    create_table :tag_issues do |t|
      t.string :article_id
      t.string :issue_id

      t.timestamps

    end
  end
end
