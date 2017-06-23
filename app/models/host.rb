class Host < User
  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, through: :listings
end
