class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.references :event, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :job_title

      t.timestamps
    end
  end
end
