class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  validates_presence_of :name, :password, :happiness, :nausea, :height, :tickets, if: :not_admin?
  validates :name, presence: true, if: :is_admin?
  validates :password, presence: true, if: :is_admin?

  has_secure_password

  def is_admin?
    admin == true
  end

  def not_admin?
    admin == false
  end

  def mood
    if self.happiness < self.nausea
      'sad'
    else
      'happy'
    end
  end



end
