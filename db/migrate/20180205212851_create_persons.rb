class CreatePerson < ActiveRecord::Migration[5.1]
  def change
    create_table :persons do |t|
      t.string :name
    end
    add_index :keywords, :person_page_rank
  end
end
