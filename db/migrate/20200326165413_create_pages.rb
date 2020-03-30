class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.integer :page_id
      t.text :title
      t.text :page_url
      t.timestamps
    end
  end
end