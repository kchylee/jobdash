class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.string :company
      t.string :job_title
      t.datetime :applied_at

      t.timestamps
    end
  end
end
