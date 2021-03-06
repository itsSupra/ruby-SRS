class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :desc
      t.float :grade
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
