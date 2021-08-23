class Borrowing < ApplicationRecord
  # borrowing = prestamo
  belongs_to :user
  belongs_to :book

end
