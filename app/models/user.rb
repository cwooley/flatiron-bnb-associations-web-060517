class User < ActiveRecord::Base
  # HOST STUFF
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings

  #GUEST STUFF
  has_many :reviews, :foreign_key => 'guest_id'
  has_many :reservations, through: :reviews


  def trips
    self.reservations
  end
end
