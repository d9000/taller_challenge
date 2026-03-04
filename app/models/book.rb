class Books < ApplicationRecord
  has_many :reservations

  def reserved!
    save!
  end
end
