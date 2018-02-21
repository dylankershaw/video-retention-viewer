class CreateViews < ActiveRecord::Migration[5.1]
  def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :video_id
      t.datetime :date
      t.float :completion

      t.timestamps
    end
  end
end
