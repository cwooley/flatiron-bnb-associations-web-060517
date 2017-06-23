class Guest < User
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :reservations, through: :reviews

  def trips
    self.reservations
  end
end
