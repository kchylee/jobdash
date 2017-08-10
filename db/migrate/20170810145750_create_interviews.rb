class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.references :application, foreign_key: true
      t.references :connection, foreign_key: true
      t.datetime :date
      t.string :stage

      t.timestamps
    end
  end
end
