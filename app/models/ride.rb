class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
  validates :user_id, presence: true
  validates :attraction_id, presence: true

  def take_ride

  end




# has a method 'take_ride' that accounts for the user not having enough tickets (FAILED - 17)
# has a method 'take_ride' that accounts for the user not being tall enough (FAILED - 18)
# has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets (FAILED - 19)
# has a method 'take_ride' that updates ticket number (FAILED - 20)
# has a method 'take_ride' that updates the user's nausea (FAILED - 21)
# has a method 'take_ride' that updates the user's happiness (FAILED - 22)
end
