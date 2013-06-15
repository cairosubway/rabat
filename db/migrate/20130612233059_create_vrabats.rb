class CreateVrabats < ActiveRecord::Migration
  def change
    create_table :vrabats do |t|

      t.timestamps
    end
  end
end
