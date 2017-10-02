class Host < ApplicationRecord
  has_many :events
  has_many :events_entertainers, through: :events
  validates :username, presence: true, uniqueness: true, length: {in: 5..30}

  # returns all entertainer instances employed by host, past or present

  def entertainers
    self.events.map {|event| event.entertainers }.flatten
  end

end
