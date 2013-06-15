class CreateErabats < ActiveRecord::Migration
  def change
    create_table :erabats do |t|

      t.timestamps
    end
  end
end
