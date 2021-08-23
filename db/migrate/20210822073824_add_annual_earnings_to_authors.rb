class AddAnnualEarningsToAuthors < ActiveRecord::Migration[6.1]
  def change

    add_column :authors, :annual_earnings, :decimal

  end
end
