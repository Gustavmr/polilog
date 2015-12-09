class CreateBia < ActiveRecord::Migration
  def change
    create_table :bia do |t|
      t.string :user_id
      t.string :article_id
      t.integer :level

      t.timestamps

    end
  end
end
