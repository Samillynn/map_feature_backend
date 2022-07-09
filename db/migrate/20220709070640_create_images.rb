class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.references :user, null: true, foreign_key: true
      t.references :report, null: true, foreign_key: true

      t.timestamps
    end
  end
end
