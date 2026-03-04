class AddUserToReservations < ActiveRecord::Migration[7.1]
  def change
    add_reference :reservations, :user
  end
end
