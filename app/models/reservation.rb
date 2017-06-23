class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_many :reviews
  # before_create :make_date
  # before_validation :make_date
  # before_save :make_date
  after_create :give_to_guest, :give_to_host

  def give_to_guest
    self.guest.reservations << self
  end

  def give_to_host
    self.listing.host.reservations << self
  end

  # def make_date
  #   binding.pry
  #   self.checkin = Date.parse(self.checkin)
  #   self.checkout = Date.parse(self.checkout)
  # end


end
