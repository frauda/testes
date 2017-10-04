class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :cpf
      t.bigint :telefone
      t.string :email
      t.string :endereco
      t.integer :numero
      t.string :bairro
      t.integer :cep
      t.references :cidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
