class BooksController < ApplicationController
  def reserve
    reservation = Reservation.reserve!(book, user)
    render status: :ok if reservation
  end

  private

  def book
    @book ||= Book.find(params[:id])
  end

  def user
    @user ||= User.find_by(email: params[:email])
end
