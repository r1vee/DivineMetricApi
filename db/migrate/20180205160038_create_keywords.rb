class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :name, null: false 
      t.references :person, foreign_key: true
    end
  end
end
