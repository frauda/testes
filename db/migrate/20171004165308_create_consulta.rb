class CreateConsulta < ActiveRecord::Migration
  def change
    create_table :consulta do |t|
      t.datetime :data_hora
      t.boolean :efetuado
      t.float :valor
      t.boolean :pagamento
      t.references :pessoa, index: true, foreign_key: true
      t.references :convenio, index: true, foreign_key: true
      t.references :atendente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
