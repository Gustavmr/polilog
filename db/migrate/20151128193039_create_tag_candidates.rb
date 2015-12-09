class CreateTagCandidates < ActiveRecord::Migration
  def change
    create_table :tag_candidates do |t|
      t.string :article_id
      t.string :candidate_id

      t.timestamps

    end
  end
end
