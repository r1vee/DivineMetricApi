class CreatePersonPageRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :person_page_ranks do |t|
      t.references :person, foreign_key: true, null: false 
      t.references :page, foreign_key: true, null: false 
      t.string :rank
    end
  end
end
