class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
  validates :user_id, presence: true
  validates :attraction_id, presence: true

  def take_ride
     message = ""

     if self.user.tickets >= self.attraction.tickets && self.user.height >= self.attraction.min_height
       message << "Thanks for riding the #{self.attraction.name}!"
       new_tickets = self.user.tickets - self.attraction.tickets
     elsif self.user.tickets <= self.attraction.tickets && self.user.height >= self.attraction.min_height
       message << "Sorry. You do not have enough tickets the #{self.attraction.name}."
     new_tickets = self.user.tickets
    elsif self.user.tickets >= self.attraction.tickets && self.user.height <= self.attraction.min_height
      message << "Sorry. You are not tall enough to ride the #{self.attraction.name}."
      new_tickets = self.user.tickets - self.attraction.tickets
    elsif self.user.height <= self.attraction.min_height && self.user.tickets <= self.attraction.tickets
      message << "Sorry. You do not have enough tickets the #{self.attraction.name}. You are not tall enough to ride the #{self.attraction.name}."
      new_tickets = self.user.tickets
    end

     #binding.pry
    new_happiness = self.user.happiness + self.attraction.happiness_rating
    new_nausea = self.user.nausea + self.attraction.nausea_rating

    self.user.tickets = new_tickets
    self.user.happiness = new_happiness
    self.user.nausea = new_nausea
    self.user.save
    message
  end
  #
  end




# has a method 'take_ride' that accounts for the user not having enough tickets (FAILED - 17)
# has a method 'take_ride' that accounts for the user not being tall enough (FAILED - 18)
# has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets (FAILED - 19)
# has a method 'take_ride' that updates ticket number (FAILED - 20)
# has a method 'take_ride' that updates the user's nausea (FAILED - 21)
# has a method 'take_ride' that updates the user's happiness (FAILED - 22)
