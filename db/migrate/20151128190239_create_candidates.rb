class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.string :education_level
      t.string :education_institution
      t.text :bio
      t.string :current_position
      t.string :previous_position

      t.timestamps

    end
  end
end
