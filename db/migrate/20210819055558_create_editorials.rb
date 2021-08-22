class CreateEditorials < ActiveRecord::Migration[6.1]
  def change
    create_table :editorials do |t|
      t.string :name
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
