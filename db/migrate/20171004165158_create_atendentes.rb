class CreateAtendentes < ActiveRecord::Migration
  def change
    create_table :atendentes do |t|
      t.string :nome
      t.references :cargo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
