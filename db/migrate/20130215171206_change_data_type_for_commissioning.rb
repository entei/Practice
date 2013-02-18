class ChangeDataTypeForCommissioning < ActiveRecord::Migration
  def up
    change_table :printers do |t|
      t.change :commissioning, :date
    end
  end

  def down
  end
end
