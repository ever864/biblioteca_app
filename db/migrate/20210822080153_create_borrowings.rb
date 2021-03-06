class CreateBorrowings < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
