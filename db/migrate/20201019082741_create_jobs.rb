class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :location
      t.references :parent, null: false, foreign_key: true
      t.references :sitter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
