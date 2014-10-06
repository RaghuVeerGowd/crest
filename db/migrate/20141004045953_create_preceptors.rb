class CreatePreceptors < ActiveRecord::Migration
  def change
    create_table :preceptors do |t|
      t.string :name
      t.string :center
      t.string :abyasi_id
      t.string :place
      t.string :role

      t.timestamps
    end
  end
end
