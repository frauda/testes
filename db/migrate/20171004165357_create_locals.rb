class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nome
      t.integer :quantidade

      t.timestamps null: false
    end
  end
end
