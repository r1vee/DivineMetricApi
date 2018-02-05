class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :url, null: false
      t.references :site, foreign_key: true, null: false
      t.timestamps :found_date_time, null: false
      t.timestamps :last_scan_date
    end
    add_index :person_page_rank
  end
end
