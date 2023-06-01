class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.references :list, foreign_key: true, null: false
      t.references :movie, foreign_key: true, null: false
      t.string :comment
      t.timestamps
    end
  end
end
