class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :name, null: false 
      t.references :person, foreign_key: true, null: false 
    end
  end
end
