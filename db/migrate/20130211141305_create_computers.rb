class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :title
      t.decimal :serial
      t.string :status

      t.timestamps
    end
  end
end
