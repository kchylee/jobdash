class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
