class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :language
      t.integer :pages
      t.string :description
      t.references :author, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :editorial, null: false, foreign_key: true
      t.timestamps
    end
  end
end
