class CreatePerson < ActiveRecord::Migration[5.1]
  def change
    create_table :persons do |t|
      t.string :name, null: false
    end
    add_index :pages, :person_page_rank, null: false
  end
end
