class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
