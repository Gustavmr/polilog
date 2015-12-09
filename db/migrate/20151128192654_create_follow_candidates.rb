class CreateFollowCandidates < ActiveRecord::Migration
  def change
    create_table :follow_candidates do |t|
      t.string :user_id
      t.string :candidate_id

      t.timestamps

    end
  end
end
