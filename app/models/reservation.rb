class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :user

  # here there is a sepation of concern issue because reservation is going ot be updating a book, the ideal is to move
  # all to a another patter like a service and handle the new reservation and the book status upodate in a transation
  def reserve!(book, _user)
    book.reverved!
    save!
  end
end
